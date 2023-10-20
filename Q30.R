# Load required libraries
library(dplyr)
library(caret)
library(nnet)

# Load the Iris dataset (built-in dataset in R)
data(iris)

# Set a seed for reproducibility
set.seed(123)

# Split the dataset into training (80%) and test (20%) sets
index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Create a logistic regression model
model <- multinom(Species ~ Petal.Length + Petal.Width, data = train_data)

# Ensure both vectors have the same factor levels
predicted_species <- factor(predicted_species, levels = levels(test_data$Species))

# Create the confusion matrix
confusion_matrix <- confusionMatrix(predicted_species, test_data$Species)


# Print the confusion matrix
print(confusion_matrix)
