# Load the built-in dataset 'women'
data("women")

# Create a factor based on the height variable
height_factor <- cut(women$height, breaks = c(55, 60, 65, 70, 75), labels = c("Short", "Average", "Tall", "Very Tall"))

# Print the factor levels
print(height_factor)
