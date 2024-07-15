from pycparser import c_parser, c_ast
import re
import os
import subprocess
import xml.etree.ElementTree as ET


isRecursive = False


class ConstraintCountingVisitor(c_ast.NodeVisitor):
    def __init__(self):
        self.nested_depth = 0
        self.max_depth = 0
        self.equality_constraints = 0
        self.notequal_constraints = 0
        self.gt_constraints = 0
        self.ge_constraints = 0
        self.lt_constraints = 0
        self.le_constraints = 0
        self.call_graph = {}
        self.max_depth_call = 0

    def visit_FuncCall(self, node):
        func_name = node.name.name
        if self.current_function not in self.call_graph:
            self.call_graph[self.current_function] = []
        if func_name == self.current_function:
            global isRecursive
            isRecursive = True
        self.call_graph[self.current_function].append(func_name)
        self.generic_visit(node)

    def visit_FuncDef(self, node):
        self.current_function = node.decl.name
        self.generic_visit(node)

    def dfs(self, node, depth, visited):
        if node in self.call_graph:
            if node in visited:
                global isRecursive
                isRecursive = True
                return
            visited.add(node)
            for child in self.call_graph[node]:
                self.dfs(child, depth + 1, visited)
            visited.remove(node)
        self.max_depth_call = max(self.max_depth_call, depth)

    def generate_call_graph(self, ast):
        self.visit(ast)
        for function in self.call_graph:
            self.dfs(function, 1, set())
        return self.call_graph

    def visit_BinaryOp(self, node):
        if node.op == "==":
            self.equality_constraints += 1
        elif node.op == "!=":
            self.notequal_constraints += 1
        elif node.op == ">":
            self.gt_constraints += 1
        elif node.op == ">=":
            self.ge_constraints += 1
        elif node.op == "<":
            self.lt_constraints += 1
        elif node.op == "<=":
            self.le_constraints += 1
        self.generic_visit(node)

    def visit_For(self, node):
        self.nested_depth += 1
        if self.nested_depth > self.max_depth:
            self.max_depth = self.nested_depth
        self.generic_visit(node)
        self.nested_depth -= 1

    def visit_While(self, node):
        self.nested_depth += 1
        if self.nested_depth > self.max_depth:
            self.max_depth = self.nested_depth
        self.generic_visit(node)
        self.nested_depth -= 1

    def visit_DoWhile(self, node):
        self.nested_depth += 1
        if self.nested_depth > self.max_depth:
            self.max_depth = self.nested_depth
        self.generic_visit(node)
        self.nested_depth -= 1


def extractFromLizard():
    home_dir = os.path.expanduser("~")  # Get the user's home directory
    lizard_xml = os.path.join(home_dir, "temp", "lizardOutput.xml")

    # Load and parse the XML file
    tree = ET.parse(lizard_xml)
    root = tree.getroot()

    # Initialize variables
    ncss_sum = None
    ccn_sum = None
    functions_sum = None

    # Iterate over all 'sum' elements and extract values
    for sum_element in root.findall(".//sum"):
        label = sum_element.get('label')
        value = sum_element.get('value')
        
        if label == "NCSS":
            ncss_sum = int(value)
        elif label == "CCN":
            ccn_sum = int(value)
        elif label == "Functions":
            functions_sum = int(value)
    return ncss_sum, ccn_sum, functions_sum
    # Print the extracted values
    # print(f"NCSS Sum: {ncss_sum}")
    # print(f"CCN Sum: {ccn_sum}")
    # print(f"Functions Sum: {functions_sum}")



def calculate_num_lines(code):
    #print("loc: ", len(code.split("\n")))
    return len(code.split("\n"))


def calculate_num_functions(ast):
    return sum(1 for node in ast if isinstance(node, c_ast.FuncDef))


def count_edges(node):
    if isinstance(node, tuple):
        edges = 0
        for child in node:
            edges += count_edges(child)
        return edges
    elif hasattr(node, "children"):
        edges = len(node.children())
        for child in node.children():
            edges += count_edges(child)
        return edges
    else:
        return 0


def find_longest_path(node, current_path_length=0):
    if isinstance(node, tuple):
        max_child_path_length = 0
        for child in node:
            max_child_path_length = max(
                max_child_path_length, find_longest_path(child, current_path_length)
            )
        return max_child_path_length
    elif hasattr(node, "children"):
        current_path_length += 1
        max_child_path_length = 0
        for child in node.children():
            max_child_path_length = max(
                max_child_path_length, find_longest_path(child, current_path_length)
            )
        return max(current_path_length, max_child_path_length)
    else:
        return current_path_length


# class CyclomaticVisitor(c_ast.NodeVisitor):
#     def __init__(self):
#         self.complexity = 1

#     def visit(self, node):
#         self.generic_visit(node)
#         if isinstance(
#             node, (c_ast.If, c_ast.For, c_ast.While, c_ast.DoWhile, c_ast.Case)
#         ):
#             self.complexity += 1


# if __name__ == '__main__':
def process_c_file(file_path):
    global isRecursive
    # print("insode process_c_file")
    home_dir = os.path.expanduser("~")  # Get the user's home directory
    lizard_xml = os.path.join(home_dir, "temp", "lizardOutput.xml")
    # print(os.getcwd())
    lizard_cmd = f"bin/lizard {file_path} -o {lizard_xml}" 
    subprocess.run(lizard_cmd, shell=True, check=True)

    with open(file_path, "r") as f:
        c_code = f.read()
    # processed_code = process_code_new(c_code)
    # print(processed_code)
    parser = c_parser.CParser()
    ast = parser.parse(c_code, filename="<none>")
    # print(ast)
    # ast.show()



    num_lines, num_functions, complexity = extractFromLizard()
    #num_lines = calculate_num_lines(c_code)
    #num_functions = calculate_num_functions(ast)
    total_edges = count_edges(ast)
    longest_path = find_longest_path(ast)

    # visitor = CyclomaticVisitor()
    # visitor.visit(ast)
    # complexity = visitor.complexity

    call_graph_generator = ConstraintCountingVisitor()
    call_graph = call_graph_generator.generate_call_graph(ast)
    max_depth_call = call_graph_generator.max_depth_call



    if isRecursive == True:
        max_depth_call = 5000
        isRecursive = False

    visitor1 = ConstraintCountingVisitor()
    visitor1.visit(ast)
    (
        max_depth,
        equality_constraints,
        notequal_constraints,
        gt_constraints,
        ge_constraints,
        lt_constraints,
        le_constraints,
    ) = (
        visitor1.max_depth,
        visitor1.equality_constraints,
        visitor1.notequal_constraints,
        visitor1.gt_constraints,
        visitor1.ge_constraints,
        visitor1.lt_constraints,
        visitor1.le_constraints,
    )
    inequality_constraints = (
        notequal_constraints
        + gt_constraints
        + ge_constraints
        + lt_constraints
        + le_constraints
    )

    return (
        num_lines,
        num_functions,
        complexity,
        total_edges,
        longest_path,
        max_depth,
        equality_constraints,
        inequality_constraints,
        max_depth_call,
    )
