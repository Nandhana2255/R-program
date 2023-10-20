# Create a sequence of even integers greater than 50
even_integers_greater_than_50 <- seq(from = 52, by = 2, length.out = 5 * 3)

# Reshape the sequence into a 5x3 array
result_array <- matrix(even_integers_greater_than_50, nrow = 5, ncol = 3)

# Display the resulting array
print(result_array)
