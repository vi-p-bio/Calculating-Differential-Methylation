# Differential Methylation Analysis Demo
# This uses mock data to demonstrate summary of site specific differential methylation
# For Comparing the same genomic regions between samples

# Example dataset
methylation_data <- data.frame(
  CpG_site = paste0("CpG", 1:10),
  sample_1 = c(0.8, 0.7, 0.5, 0.9, 0.2, 0.4, 0.6, 0.3, 0.5, 0.7),
  sample_2 = c(0.7, 0.6, 0.4, 0.85, 0.25, 0.35, 0.55, 0.3, 0.45, 0.65)
)

# Calculate difference between samples
methylation_data$delta = methylation_data$sample_2 - methylation_data$sample_1

# Identify sites with difference greater than 0.2
dm_sites <- subset(methylation_data, abs(delta) > 0.2)

print("Differentially methylated sites:")
print(dm_sites)
