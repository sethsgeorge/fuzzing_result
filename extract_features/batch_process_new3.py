import os
import subprocess
import csv  
import re
from feature import process_c_file
import shutil
import string


root_directory = r'/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32'
output_file = 'output_feature.csv'  # Change the output file extension to .csv

# def remove_lines(file_path):
#     with open(file_path, 'r') as file:
#         content = file.read()

#     content = re.sub(r'^\s*#.*', '', content, flags=re.MULTILINE)

#     with open(file_path, 'w') as file:
#         file.write(content)


def adjust_typedefs(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Remove single-line comments
    content = re.sub(r'__signed__', 'signed', content)
    content = re.sub(r'__inline__', '', content)

    content = re.sub(r'__inline', '', content)
    
    content = re.sub(r'__builtin_va_list', 'char * ', content)
    content = re.sub(r'\* __restrict', '', content)
    content = re.sub(r'\*__restrict', '', content)

    content = re.sub(r'extern', '', content)
    content = re.sub(r'__const', 'const', content)
    content = re.sub(r'reach_error', 'reach_error1', content)





    # Write the modified content back to the file
    with open(file_path, 'w') as file:
        file.write(content)
        
         

def removeComments(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Remove single-line comments
    content = re.sub(r'\/\/.*', '', content)

    # Remove multi-line comments
    content = re.sub(r'\/\*[\s\S]*?\*\/', '', content)

    # Write the modified content back to the file
    with open(file_path, 'w') as file:
        file.write(content)

# def remove_attribute_macros(file_path):
#     with open(file_path, 'r') as file:
#         content = file.read()

#     # Remove __attribute__ macros with any arguments
#     content = re.sub(r'__attribute__\s*\(\s*\(.*?\)\s*\)', '', content)

#     # Write the modified content back to the file
#     with open(file_path, 'w') as file:
#         file.write(content)


def extract_code(data):
    start_pos = -1
    end_pos = -1
    count_open = 0
    count_close = 0
    code_snippet = []
     
    for i, v in enumerate(data):
        if i==0 and v!='(':
            #print(i, v, "a")
            break
        if v=='(':
            #print(i, v, "aa")
            count_open+= 1
            if start_pos == -1:
                #print(i, v, "aaa")
                start_pos = i
        if v==')':
            #print(i, v, "aaaa")
            count_close+=1
            if count_open == count_close and end_pos==-1:
                #print(i, v, "aaaaa")
                end_pos= i+1
        if start_pos!=-1 and end_pos!=-1:
            #print(i, v, "aaaaaa")
            code_snippet.append((start_pos, end_pos))
            start_pos = -1
            end_pos = -1
            break
    return code_snippet

def findIndex(code):
    return code.find("__attribute__")

def findIndex2(code):
    return code.find(", __extension__")

def findIndex3(code):
    return code.find("__asm__")

def findIndex4(code):
    return code.find("__asm__ volatile")

def findIndex5(code):
    return code.find("_dev_info")
   

def remove_attribute_macros(file_path):
    with open(file_path, 'r') as file:
        code = file.read()
    #print("original code:", code)
    appendedCode = ''
    len = 13
    #len = len("__attribute__")
    index = findIndex(code)
    #print('initial index:', index)
    while(index != -1):
        splitat = index+len
        codeleft = code[:index]
        codeRight = code[splitat:]
        codeRight = codeRight.lstrip()
        #print("code left:", codeleft)
        #print("code right:", codeRight)
        appendedCode = codeleft
        indices = extract_code(codeRight)
        #print("indices: ", indices)
        if not indices:
            code = codeRight
        else:
            code = codeRight[indices[0][1]: ]
        appendedCode = appendedCode + code
        code = appendedCode
        index = findIndex(code)
        #print("index of attribute:", index)
    with open(file_path, 'w') as file:
        file.write(code)
    # print("new code:", code)



def remove_extension_macros(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Remove __attribute__ macros with any arguments
    content = re.sub(r'__extension__', '', content)

    # Write the modified content back to the file
    with open(file_path, 'w') as file:
        file.write(content)


def remove_extension_macros_with_paren(file_path):
    with open(file_path, 'r') as file:
        code = file.read()
    #print("original code:", code)
    appendedCode = ''
    len = 15
    #len = len(", __attribute__")
                
    index = findIndex2(code)
    #print('initial index:', index)
    while(index != -1):
        splitat = index+len
        codeleft = code[:index]
        codeRight = code[splitat:]
        codeRight = codeRight.lstrip()
        #print("code left:", codeleft)
        #print("code right:", codeRight)
        appendedCode = codeleft
        indices = extract_code(codeRight)
        #print("indices: ", indices)
        if not indices:
            code = codeRight
        else:
            code = codeRight[indices[0][1]: ]
        appendedCode = appendedCode + code
        code = appendedCode
        index = findIndex2(code)
        #print("index of attribute:", index)
    with open(file_path, 'w') as file:
        file.write(code)
    # print("new code:", code)
        

def remove_asm(file_path):
    with open(file_path, 'r') as file:
        code = file.read()
    #print("original code:", code)
    appendedCode = ''
    len = 7
    #len = len("__asm__")
    index = findIndex3(code)
    #print('initial index:', index)
    while(index != -1):
        splitat = index+len
        codeleft = code[:index]
        codeRight = code[splitat:]
        codeRight = codeRight.lstrip()
        #print("code left:", codeleft)
        #print("code right:", codeRight)
        appendedCode = codeleft
        indices = extract_code(codeRight)
        #print("indices: ", indices)
        if not indices:
            code = codeRight
        else:
            code = codeRight[indices[0][1]: ]
        appendedCode = appendedCode + code
        code = appendedCode
        index = findIndex3(code)
        #print("index of attribute:", index)
    with open(file_path, 'w') as file:
        file.write(code)
    # print("new code:", code)
        

def remove_asm_volatile(file_path):
    with open(file_path, 'r') as file:
        code = file.read()
    #print("original code:", code)
    appendedCode = ''
    len = 16
    #len = len("__asm__ volatile")
    index = findIndex4(code)
    #print('initial index:', index)
    while(index != -1):
        splitat = index+len
        codeleft = code[:index]
        codeRight = code[splitat:]
        codeRight = codeRight.lstrip()
        #print("code left:", codeleft)
        #print("code right:", codeRight)
        appendedCode = codeleft
        indices = extract_code(codeRight)
        #print("indices: ", indices)
        if not indices:
            code = codeRight
        else:
            code = codeRight[indices[0][1]: ]
        appendedCode = appendedCode + code
        code = appendedCode
        index = findIndex4(code)
        #print("index of attribute:", index)
    with open(file_path, 'w') as file:
        file.write(code)
    # print("new code:", code)
        

def remove_http(file_path):
    with open(file_path, 'r') as file:
        code = file.read()
    code = re.sub(r'http://', '', code, flags=re.DOTALL)
    with open(file_path, 'w') as file:
        file.write(code)
        



def preprocess_c_file(input_file_path):
    try:
        output_preprocessed_dir = os.path.join(os.getcwd(), "temp_preprocessed")
        os.makedirs(output_preprocessed_dir, exist_ok=True)
        base_file_name, file_extension = os.path.splitext(os.path.basename(input_file_path))
        
        if file_extension == '.c':
            output_preprocessed_file_path = os.path.join(output_preprocessed_dir, base_file_name + "_preprocessed.i")
            # Preprocess only if it's a .c file
            #preprocess_command = f"gcc -E -D'__attribute__(x)=' {input_file_path} -o {output_preprocessed_file_path}"
            preprocess_command = f"gcc -E -D'__attribute__(x)=' -D'__extension=' {input_file_path} -o {output_preprocessed_file_path}"

            subprocess.run(preprocess_command, shell=True, check=True)
            adjust_typedefs(output_preprocessed_file_path)

            remove_attribute_macros(output_preprocessed_file_path)
            remove_extension_macros_with_paren(output_preprocessed_file_path)
            remove_extension_macros(output_preprocessed_file_path)
            #print("output path: ", output_preprocessed_file_path)
            
            
            return output_preprocessed_file_path
        
        elif file_extension == '.i':
            # If it's a .i file, simply copy it to the output directory
            output_preprocessed_file_path = os.path.join(output_preprocessed_dir, os.path.basename(input_file_path))
            shutil.copy(input_file_path, output_preprocessed_file_path)
            remove_http(output_preprocessed_file_path)

            removeComments(output_preprocessed_file_path)
            remove_attribute_macros(output_preprocessed_file_path)
            remove_extension_macros_with_paren(output_preprocessed_file_path)
            remove_extension_macros(output_preprocessed_file_path)
            remove_asm_volatile(output_preprocessed_file_path)
            remove_asm(output_preprocessed_file_path)

            


            adjust_typedefs(output_preprocessed_file_path)

            return output_preprocessed_file_path
        
    except Exception as e:
        print(f"Error preprocessing {input_file_path}: {e}")
        return "None"

def process_and_write_metrics(preprocessed_file_path, input_file_path, out_csv_writer):
    try:
        num_lines, num_functions, cyclomatic_complexity, total_edges, longest_path,\
             loop_depth, equality_constraints, inequality_constraints, max_depth_call = process_c_file(preprocessed_file_path)
    except Exception as e:
        print(f"Error processing {input_file_path}: {e}")
        num_lines = num_functions = cyclomatic_complexity = total_edges = longest_path =\
              loop_depth = equality_constraints = inequality_constraints = max_depth_call  = 0
    
    # Write metrics to the CSV file
    out_csv_writer.writerow([
        input_file_path,
        num_lines,
        num_functions,
        cyclomatic_complexity,
        total_edges,
        longest_path,
        loop_depth,
        equality_constraints,
        inequality_constraints,
        max_depth_call,
        
    ])

# Open the output CSV file in 'w' mode
with open(output_file, 'a', newline='') as out_csv:
    csv_writer = csv.writer(out_csv)
    # Write header row to the CSV file
    csv_writer.writerow([
        "File",
        "Number of lines",
        "Number of functions",
        "Cyclomatic complexity",
        "Total edges in AST",
        "Height of AST",
        "Maximum nested loop depth",
        "Number of equality constraints",
        "Number of inequality constraints",
        "Call stack depth",
     
    ])

    for dirpath, dirnames, filenames in os.walk(root_directory):
        for filename in filenames:
            if filename.endswith(('.c', '.i')):  # Process both .c and .i files
                input_file_path = os.path.join(dirpath, filename)
                
                #remove_lines(input_file_path)

                preprocessed_file_path = preprocess_c_file(input_file_path)
                process_and_write_metrics(preprocessed_file_path, input_file_path, csv_writer)
