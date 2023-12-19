
library(reshape2)

# Create a sample data frame
data <- data.frame(
  ID = c(1, 2, 3),
  Name = c("John", "Jane", "Bob"),
  Math = c(90, 85, 92),
  English = c(88, 90, 87)
)

# Original data frame
print("Original Data:")
print(data)

# Melt the data frame
melted_data <- melt(data, id.vars = c("ID", "Name"))

cat("\n\n")
# Melted data frame
print("Melted Data:")
print(melted_data)

# Cast the melted data back to the original format
casted_data <- cast(melted_data, ID + Name ~ variable)

cat("\n\n")
# Casted data frame
print("Casted Data:")
print(casted_data)
















