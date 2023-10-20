# Load the Iris dataset (built-in dataset in R)
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation
# Dimension
cat("Dimension of Iris dataset: ", paste(dim(iris), collapse = " x "), "\n\n")

# Structure
str(iris)
cat("\n")

# Summary statistics
summary(iris)
cat("\n")

# Standard Deviation of all features
sapply(iris[, 1:4], sd)
cat("\n")

# (ii) Find mean and standard deviation of features grouped by three species
by_species <- by(iris[, 1:4], iris$Species, FUN = function(x) c(Mean = apply(x, 2, mean), SD = apply(x, 2, sd)))
print(by_species)
cat("\n")

# (iii) Find quantile value of sepal width and length
sepal_width_quantile <- quantile(iris$Sepal.Width)
sepal_length_quantile <- quantile(iris$Sepal.Length)
cat("Quantiles for Sepal Width:\n", sepal_width_quantile, "\n")
cat("Quantiles for Sepal Length:\n", sepal_length_quantile, "\n\n")

# (iv) Create a new data frame named iris1
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length), labels = FALSE)
cat("iris1 data frame created with a new column 'Sepal.Length.Cate'\n\n")

# (v) Average value of numerical variables by Species and Sepal.Length.Cate
library(dplyr)
avg_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise_all(mean)
print(avg_values)
cat("\n")

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
avg_mean_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise_if(is.numeric, mean)
print(avg_mean_values)
cat("\n")

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
pivot_table <- avg_mean_values %>%
  pivot_wider(names_from = Sepal.Length.Cate, values_from = Sepal.Length, 
              names_prefix = "Sepal.Length.", values_fill = 0)

print(pivot_table)
