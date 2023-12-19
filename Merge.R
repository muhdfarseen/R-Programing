# Create two sample data frames
data1 <- data.frame(ID = c(1, 2, 3),
                    Name = c("John", "Jane", "Bob"),
                    Math = c(90, 85, 92))

data2 <- data.frame(ID = c(1, 2, 3),
                    English = c(88, 90, 87),
                    Science = c(75, 82, 88))

# Display the original data frames
print("Original Data Frame 1:")
print(data1)

cat("\n\n")

print("Original Data Frame 2:")
print(data2)

# Merge the data frames based on the 'ID' column
merged_data <- merge(data1, data2, by = "ID")

cat("\n\n")

# Display the merged data frame
print("Merged Data:")
print(merged_data)
