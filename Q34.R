# Identify columns with missing values
missing_columns <- colnames(airquality)[apply(is.na(airquality), 2, any)]

# Iterate through the columns with missing values
for (col in missing_columns) {
  # Calculate the percentage of missing values
  missing_percentage <- mean(is.na(airquality[, col])) * 100
  
  if (missing_percentage < 10) {
    # Drop rows with missing values if less than 10%
    airquality <- airquality[!is.na(airquality[, col]), ]
  } else {
    # Replace missing values with the mean of that feature
    airquality[is.na(airquality[, col]), col] <- mean(airquality[!is.na(airquality[, col]), col])
  }
}

# Apply linear regression
model <- lm(Ozone ~ Solar.R, data = airquality)

# Load the ggplot2 library
library(ggplot2)

# Create a scatter plot with a regression line
ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Scatter Plot of Ozone vs Solar.R", x = "Solar.R", y = "Ozone")
