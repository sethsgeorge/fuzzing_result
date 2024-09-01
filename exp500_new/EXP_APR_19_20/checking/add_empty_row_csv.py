import csv

def add_empty_row(csv_file):
    rows = []
    header_index = None
    with open(csv_file, 'r', newline='') as csvfile:
        reader = csv.reader(csvfile)
        for i, row in enumerate(reader):
            if i == 0:  # Assuming the first row contains headers
                header_index = row.index("configuration")
            if row[header_index] == "c1":
                rows.append([])
            rows.append(row)
    
    with open(csv_file, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(rows)

# Replace 'your_file.csv' with the path to your CSV file
add_empty_row('modified2.csv')
