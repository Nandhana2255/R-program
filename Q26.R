# Load the built-in dataset 'airquality'
data("airquality")

# Check if 'airquality' is a data frame
if (is.data.frame(airquality)) {
  cat("'airquality' is a data frame.\n")
} else {
  cat("'airquality' is not a data frame.\n")
}

# Order the entire data frame by the first and second column
ordered_airquality <- airquality[order(airquality$Ozone, airquality$Solar.R), ]

# Remove the variables 'Solar.R' and 'Wind'
filtered_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c('Solar.R', 'Wind'))]

# Display the modified data frame
print(filtered_airquality)
