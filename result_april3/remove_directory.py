import csv

def process_csv(input_file, output_file):
    with open(input_file, 'r', newline='') as csvfile:
        reader = csv.reader(csvfile)
        with open(output_file, 'w', newline='') as outfile:
            writer = csv.writer(outfile)
            for row in reader:
                new_row = [cell.split('/')[1] if '/' in cell else cell for cell in row]
                writer.writerow(new_row)

input_file = 'combined_file.csv'
output_file = 'combined_file2.csv'
process_csv(input_file, output_file)
