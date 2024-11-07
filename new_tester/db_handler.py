import pandas as pd

# Example data structure with multiple original domains and their respective learned domains
domains_data = {
    "original_1": [False] * 100,
    "learned1_1": [False] * 100,
    "learned2_1": [False] * 100,
    "original_2": [False] * 100,
    "learned1_2": [False] * 100,
    "learned2_2": [False] * 100,
    "original_3": [False] * 100,
    "learned1_3": [False] * 100,
    "learned2_3": [False] * 100,
}

# Initialize an empty DataFrame to hold all problem results
df_list = []


# Function to calculate metrics
def calculate_metrics(original, comparison):
    tp = sum(o and c for o, c in zip(original, comparison))
    tn = sum(not o and not c for o, c in zip(original, comparison))
    fp = sum(not o and c for o, c in zip(original, comparison))
    fn = sum(o and not c for o, c in zip(original, comparison))

    accuracy = (tp + tn) / len(original) if len(original) > 0 else 0
    precision = tp / (tp + fp) if (tp + fp) > 0 else 0
    recall = tp / (tp + fn) if (tp + fn) > 0 else 0

    return tp, tn, fp, fn, accuracy, precision, recall


# Collect metrics for each original domain and learned domain pair
all_metrics_summary = []

for i in range(1, 4):  # For original_1, original_2, original_3
    original_key = f"original_{i}"
    original_results = domains_data[original_key]

    domain_df = pd.DataFrame({
        "Problem": [f"Problem {j + 1}" for j in range(100)],
        original_key: original_results
    })

    metrics_summary = {
        "Metric": ["Total TP", "Total TN", "Total FP", "Total FN", "Accuracy", "Precision", "Recall"]
    }

    for domain in domains_data:
        if domain.startswith(f"learned") and domain.endswith(f"_{i}"):
            domain_results = domains_data[domain]
            tp, tn, fp, fn, accuracy, precision, recall = calculate_metrics(original_results, domain_results)
            domain_df[domain] = domain_results
            metrics_summary[domain] = [tp, tn, fp, fn, accuracy, precision, recall]

    # Append metrics summary for this original domain
    metrics_df = pd.DataFrame(metrics_summary)
    all_metrics_summary.append(metrics_df)

    # Append problem data and metrics summary for this original domain
    domain_df = pd.concat([domain_df, pd.DataFrame([{}]), metrics_df], ignore_index=True)
    df_list.append(domain_df)

# Concatenate all original domains' DataFrames
final_df = pd.concat(df_list, keys=[f"Original Domain {i}" for i in range(1, 4)], names=["Original Domain"])

# Calculate averages across the original domains
average_metrics = pd.concat(all_metrics_summary).groupby("Metric").mean().round(2)
average_metrics["Original Domain Average"] = "Avg across Original Domains"

# Append averaged metrics to the final DataFrame
final_df = pd.concat([final_df, pd.DataFrame([{}]), average_metrics.reset_index()], ignore_index=True)

# Export to Excel
output_path = "experiment_results_avg.xlsx"
final_df.to_excel(output_path, index=False)
print(f"Results saved to {output_path}")
