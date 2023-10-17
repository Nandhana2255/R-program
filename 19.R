my_list <- list(
  vector_element = c(1, 2, 3, 4, 5),
  matrix_element = matrix(1:9, nrow = 3),
  function_element = function(x) x^2
)
cat("Contents of the list:\n")
print(my_list)
