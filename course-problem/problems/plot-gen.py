import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

# Read the CSV file
data = pd.read_csv("output.csv")

# Plot the distribution of Plan Length
plt.figure(figsize=(10, 6))
sns.histplot(data['Plan Length'], bins=20, kde=True)
plt.title('Distribution of Plan Length')
plt.xlabel('Plan Length')
plt.ylabel('Frequency')
plt.show()

# Scatter plot of Planning Time vs. Heuristic Time
plt.figure(figsize=(10, 6))
sns.scatterplot(data=data, x='Planning Time (msec)', y='Heuristic Time (msec)', hue='Problem')
plt.title('Scatter Plot - Planning Time vs. Heuristic Time')
plt.xlabel('Planning Time (msec)')
plt.ylabel('Heuristic Time (msec)')
plt.show()


# Box plot of Search Time distribution by Problem
plt.figure(figsize=(12, 8))
sns.boxplot(data=data, x='Problem', y='Search Time (msec)')
plt.title('Box Plot - Search Time Distribution by Problem')
plt.xlabel('Problem')
plt.ylabel('Search Time (msec)')
plt.show()

# Pair plot for key metrics
sns.pairplot(data[['Plan Length', 'Planning Time (msec)', 'Heuristic Time (msec)', 'Search Time (msec)', 'Expanded Nodes']])
plt.suptitle('Pair Plot for Key Metrics', y=1.02)
plt.show()

# Correlation heatmap
correlation_matrix = data[['Plan Length', 'Planning Time (msec)', 'Heuristic Time (msec)', 'Search Time (msec)', 'Expanded Nodes']].corr()
plt.figure(figsize=(10, 8))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', fmt='.2f')
plt.title('Correlation Heatmap for Key Metrics')
plt.show()

# Bar plot for the number of Dead-Ends Detected by Problem
plt.figure(figsize=(12, 6))
sns.barplot(data=data, x='Problem', y='Dead-Ends Detected', ci=None)
plt.title('Bar Plot - Number of Dead-Ends Detected by Problem')
plt.xlabel('Problem')
plt.ylabel('Number of Dead-Ends Detected')
plt.show()

# Line plot for the trend of Search Time over Problems
plt.figure(figsize=(12, 6))
sns.lineplot(data=data, x='Problem', y='Search Time (msec)', ci=None)
plt.title('Line Plot - Trend of Search Time over Problems')
plt.xlabel('Problem')
plt.ylabel('Search Time (msec)')
plt.show()

# Stacked bar plot for Planning Time and Heuristic Time by Problem
plt.figure(figsize=(12, 6))
sns.barplot(data=data, x='Problem', y='Planning Time (msec)', color='blue', label='Planning Time')
sns.barplot(data=data, x='Problem', y='Heuristic Time (msec)', color='orange', label='Heuristic Time')
plt.title('Stacked Bar Plot - Planning Time and Heuristic Time by Problem')
plt.xlabel('Problem')
plt.ylabel('Time (msec)')
plt.legend()
plt.show()


# Violin plot for the distribution of Expanded Nodes by Problem
plt.figure(figsize=(12, 8))
sns.violinplot(data=data, x='Problem', y='Expanded Nodes', inner='quartile')
plt.title('Violin Plot - Distribution of Expanded Nodes by Problem')
plt.xlabel('Problem')
plt.ylabel('Expanded Nodes')
plt.show()


# Count plot for the frequency of Fixed Constraint Violations
plt.figure(figsize=(10, 6))
sns.countplot(data=data, x='Fixed Constraint Violations', palette='viridis')
plt.title('Count Plot - Frequency of Fixed Constraint Violations')
plt.xlabel('Fixed Constraint Violations')
plt.ylabel('Frequency')
plt.show()

# Line plot for the trend of Plan Length over Problems
plt.figure(figsize=(12, 6))
sns.lineplot(data=data, x='Problem', y='Plan Length', ci=None)
plt.title('Line Plot - Trend of Plan Length over Problems')
plt.xlabel('Problem')
plt.ylabel('Plan Length')
plt.show()

# Plot the distribution of Metric (Search)
plt.figure(figsize=(10, 6))
sns.histplot(data['Metric (Search)'], bins=20, kde=True, color='green')
plt.title('Distribution of Metric (Search)')
plt.xlabel('Metric (Search)')
plt.ylabel('Frequency')
plt.show()

# Scatter plot of Expanded Nodes vs. States Evaluated
plt.figure(figsize=(10, 6))
sns.scatterplot(data=data, x='Expanded Nodes', y='States Evaluated', hue='Problem', palette='Set2')
plt.title('Scatter Plot - Expanded Nodes vs. States Evaluated')
plt.xlabel('Expanded Nodes')
plt.ylabel('States Evaluated')
plt.show()

# Box plot of Dead-Ends Detected distribution by Problem
plt.figure(figsize=(12, 8))
sns.boxplot(data=data, x='Problem', y='Dead-Ends Detected', palette='Blues')
plt.title('Box Plot - Dead-Ends Detected Distribution by Problem')
plt.xlabel('Problem')
plt.ylabel('Dead-Ends Detected')
plt.show()

# Pair plot for additional metrics
sns.pairplot(data[['Dead-Ends Detected', 'Duplicates Detected', 'Fixed Constraint Violations']])
plt.suptitle('Pair Plot for Additional Metrics', y=1.02)
plt.show()

# Bar plot for the number of Duplicates Detected by Problem
plt.figure(figsize=(12, 6))
sns.barplot(data=data, x='Problem', y='Duplicates Detected', ci=None, palette='muted')
plt.title('Bar Plot - Number of Duplicates Detected by Problem')
plt.xlabel('Problem')
plt.ylabel('Number of Duplicates Detected')
plt.show()

# Line plot for the trend of Planning Time over Problems
plt.figure(figsize=(12, 6))
sns.lineplot(data=data, x='Problem', y='Planning Time (msec)', ci=None, marker='o', color='purple')
plt.title('Line Plot - Trend of Planning Time over Problems')
plt.xlabel('Problem')
plt.ylabel('Planning Time (msec)')
plt.show()

# Stacked bar plot for Search Time and Heuristic Time by Problem
plt.figure(figsize=(12, 6))
sns.barplot(data=data, x='Problem', y='Search Time (msec)', color='green', label='Search Time')
sns.barplot(data=data, x='Problem', y='Heuristic Time (msec)', color='yellow', label='Heuristic Time')
plt.title('Stacked Bar Plot - Search Time and Heuristic Time by Problem')
plt.xlabel('Problem')
plt.ylabel('Time (msec)')
plt.legend()
plt.show()

# Violin plot for the distribution of Planning Time by Problem
plt.figure(figsize=(12, 8))
sns.violinplot(data=data, x='Problem', y='Planning Time (msec)', inner='quartile', palette='Set3')
plt.title('Violin Plot - Distribution of Planning Time by Problem')
plt.xlabel('Problem')
plt.ylabel('Planning Time (msec)')
plt.show()

# Count plot for the frequency of Fixed Constraint Violations
plt.figure(figsize=(10, 6))
sns.countplot(data=data, x='Fixed Constraint Violations', palette='viridis')
plt.title('Count Plot - Frequency of Fixed Constraint Violations')
plt.xlabel('Fixed Constraint Violations')
plt.ylabel('Frequency')
plt.show()

# Line plot for the trend of Duplicates Detected over Problems
plt.figure(figsize=(12, 6))
sns.lineplot(data=data, x='Problem', y='Duplicates Detected', ci=None, marker='s', color='orange')
plt.title('Line Plot - Trend of Duplicates Detected over Problems')
plt.xlabel('Problem')
plt.ylabel('Duplicates Detected')
plt.show()

# Scatter plot of Heuristic Time vs. Search Time with size indicating Expanded Nodes
plt.figure(figsize=(10, 6))
sns.scatterplot(data=data, x='Heuristic Time (msec)', y='Search Time (msec)', hue='Problem', size='Expanded Nodes', sizes=(20, 200), palette='coolwarm')
plt.title('Scatter Plot - Heuristic Time vs. Search Time (Size: Expanded Nodes)')
plt.xlabel('Heuristic Time (msec)')
plt.ylabel('Search Time (msec)')
plt.show()

# Box plot for the distribution of States Evaluated by Problem
plt.figure(figsize=(12, 8))
sns.boxplot(data=data, x='Problem', y='States Evaluated', palette='Set1')
plt.title('Box Plot - States Evaluated Distribution by Problem')
plt.xlabel('Problem')
plt.ylabel('States Evaluated')
plt.show()

# Pair plot for a broader set of metrics
sns.pairplot(data[['Plan Length', 'Heuristic Time (msec)', 'Search Time (msec)', 'Expanded Nodes', 'States Evaluated', 'Fixed Constraint Violations', 'Dead-Ends Detected']])
plt.suptitle('Pair Plot for Broader Set of Metrics', y=1.02)
plt.show()

# Correlation heatmap for a broader set of metrics
correlation_matrix_broad = data[['Plan Length', 'Heuristic Time (msec)', 'Search Time (msec)', 'Expanded Nodes', 'States Evaluated', 'Fixed Constraint Violations', 'Dead-Ends Detected']].corr()
plt.figure(figsize=(10, 8))
sns.heatmap(correlation_matrix_broad, annot=True, cmap='coolwarm', fmt='.2f')
plt.title('Correlation Heatmap for Broader Set of Metrics')
plt.show()

# Line plot for the trend of Fixed Constraint Violations over Problems
plt.figure(figsize=(12, 6))
sns.lineplot(data=data, x='Problem', y='Fixed Constraint Violations', ci=None, marker='o', color='brown')
plt.title('Line Plot - Trend of Fixed Constraint Violations over Problems')
plt.xlabel('Problem')
plt.ylabel('Fixed Constraint Violations')
plt.show()
