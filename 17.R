values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
dimensions <- c(2, 5, 1)
dimnames_list <- list(
  c("Row1", "Row2"),
  c("Col1", "Col2", "Col3", "Col4", "Col5"),
  c("Layer1")
)
my_array <- array(values, dim = dimensions, dimnames = dimnames_list)
print(my_array)