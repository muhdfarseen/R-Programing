# Example data
my_data <- data.frame(
  outcome = c(0, 1, 1, 0, 1),
  x = c(2, 4, 5, 4, 5)
)

# Fit logistic regression model
logistic_model <- glm(outcome ~ x, data = my_data, family = "binomial")

cat("summary statistics of the logistic model : \n\n")
print(summary(logistic_model))
cat("\n\n")

cat("coefficients of the logistic model : \n\n")
print(coefficients(logistic_model))
cat("\n\n")

# New data for predictions
new_data <- data.frame(x = c(6, 7, 8))

# Predictions on new data
cat("prediction new : \n\n")
predictions_new <- predict(logistic_model, newdata = new_data, type = "response")
print(predictions_new)
cat("\n\n")

# Scatter plot of the data
plot(my_data$x, my_data$outcome,
     main = "Logistic Regression",
     xlab = "X",
     ylab = "Probability")

# Add logistic curve
curve(predict(logistic_model, data.frame(x = x), type = "response"),
      add = TRUE,
      col = "red")
