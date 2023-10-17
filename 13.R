set.seed(42)
random_numbers <- rnorm(1000, mean = 0, sd = 1)
value_counts <- table(random_numbers)

print(value_counts)
