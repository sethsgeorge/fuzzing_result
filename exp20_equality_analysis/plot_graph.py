import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file
df = pd.read_csv('merged_csv_updated3.csv')

# Pivot the data to create a separate column for each configuration
df_pivot = df.pivot(index='program_name', columns='configuration', values='branch_coverage')

# Create a numerical index for the program names
program_index = range(1, len(df_pivot) + 1)

# Plot the data
plt.figure(figsize=(15, 12))
for config in df_pivot.columns:
    plt.plot(program_index, df_pivot[config].values, label=config, marker='o', linestyle='-')

# Set the title and labels
plt.title('Branch Coverage by Configuration')
plt.xlabel('Program Index')
plt.ylabel('Branch Coverage (%)')
plt.legend(title='Configuration')

# Set the x-axis ticks to the numerical index
plt.xticks(program_index)

# Create a separate page with the legend
plt.tight_layout()
plt.savefig('plot3.pdf', bbox_inches='tight')

# Create a text file with the program index legend
with open('program_index_legend.txt', 'w') as f:
    for i, program in enumerate(df_pivot.index):
        f.write(f'{i+1}: {program}\n')

# Show the plot
plt.show()








