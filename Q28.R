# Set a seed for reproducibility
set.seed(123)

# Generate a random sample of letters from 'LETTERS'
sample_letters <- sample(LETTERS, 20, replace = TRUE)

# Create a factor from the random sample
sample_factor <- factor(sample_letters)

# Extract the first five levels from the factor
first_five_levels <- levels(sample_factor)[1:5]

# Print the first five levels
print(first_five_levels)
