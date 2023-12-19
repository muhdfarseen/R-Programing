#create dataset

my_data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 4, 5, 4, 5)
)

#Use the lm() function to fit a linear model
linear_model <- lm(y ~ x, data = my_data)

cat("Summary statistics of linear modal : \n\n")
print(summary(linear_model))
cat("\n\n")

cat("coefficients of the linear model : \n\n")
print(coefficients(linear_model))
cat("\n\n")

# New data for predictions
new_data <- data.frame(x = c(6, 7, 8))

# Predictions on new data
predictions_new <- predict(linear_model, newdata = new_data)
cat("prediction new : \n\n")
print(predictions_new)
cat("\n\n")

# Scatter plot of the data
plot(my_data$x, my_data$y, main = "Linear Regression", xlab = "X", ylab = "Y")

# Add regression line
abline(linear_model, col = "red")
