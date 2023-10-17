input_string <- "programming"
unique_characters <- unique(strsplit(input_string, "")[[1]])
cat("Unique elements of the string:", unique_characters, "\n")

input_vector <- c(3, 5, 2, 5, 1, 3, 4, 2, 8)
unique_numbers <- unique(input_vector)
cat("Unique numbers in the vector:", unique_numbers, "\n")
