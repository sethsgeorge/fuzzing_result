import os
import pandas as pd

def combine_csv_files(base_folder):
    # Dictionaries to store DataFrames
    combined_data = {
        'seth': pd.DataFrame(),
        'sarath': pd.DataFrame()
    }

    # Walk through the directory
    for root, dirs, files in os.walk(base_folder):
        for file in files:
            if file.endswith('.csv'):
                file_path = os.path.join(root, file)
                if 'result_seth_' in file:
                    df = pd.read_csv(file_path)
                    combined_data['seth'] = pd.concat([combined_data['seth'], df], ignore_index=True)
                elif 'result_sarath_' in file:
                    df = pd.read_csv(file_path)
                    combined_data['sarath'] = pd.concat([combined_data['sarath'], df], ignore_index=True)

    # Save combined data to CSV files
    combined_data['seth'].to_csv(f'seth_combined.csv', index=False)
    combined_data['sarath'].to_csv(f'sarath_combined.csv', index=False)

# Usage
combine_csv_files('csv_folders')
