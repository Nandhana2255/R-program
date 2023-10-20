# Given values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# (ii) Find the 2nd highest value
sorted_values <- sort(unique(values), decreasing = TRUE)
second_highest <- sorted_values[2]
cat("2nd Highest Value:", second_highest, "\n")

# (iii) Find the 3rd lowest value
third_lowest <- sorted_values[3]
cat("3rd Lowest Value:", third_lowest, "\n")
