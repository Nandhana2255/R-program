# Define the data for the array (four columns)
col1 <- c(1, 2, 3)
col2 <- c(4, 5, 6)
col3 <- c(7, 8, 9)
col4 <- c(10, 11, 12)

# Create an array with the specified dimensions
my_array <- array(data = c(col1, col2, col3, col4), dim = c(3, 4, 2))

# Display the content of the array
print(my_array)
