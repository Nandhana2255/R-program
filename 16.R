matrix1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)

matrix2 <- matrix(21:29, nrow = 3, ncol = 3)
rownames(matrix2) <- c("Row1", "Row2", "Row3")
colnames(matrix2) <- c("ColA", "ColB", "ColC")

matrix3 <- matrix(30:33, nrow = 2, ncol = 2, byrow = FALSE)

cat("Matrix 1 (5x4 matrix filled by rows):",matrix1,"\n")
cat("\nMatrix 2 (3x3 matrix with labels):",matrix2,"\n")
cat("\nMatrix 3 (2x2 matrix filled by columns):",matrix3,"\n")