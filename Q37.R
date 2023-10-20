# Fit a multiple regression model
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# Summarize the model
summary(model)

# Define the new data point for prediction with Diet as a factor
new_data <- data.frame(Time = 10, Diet = factor(1))  # Assuming Diet 1 is a factor level

# Predict the weight using the model
predicted_weight <- predict(model, newdata = new_data)

# Print the predicted weight
print(predicted_weight)

# Extract the observed weight for Time=10 and Diet=1
observed_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]

# Calculate the error
error <- observed_weight - predicted_weight

# Print the error
print(error)
