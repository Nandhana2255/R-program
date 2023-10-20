# Calculate the mean temperature without using a built-in function
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")

# Extract the first five rows
first_five_rows <- head(airquality, 5)
print(first_five_rows)

# Extract all columns except Temp and Wind
selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(selected_columns)

# Find the row with the lowest temperature
coldest_day <- airquality[which.min(airquality$Temp), ]
cat("Coldest Day:", coldest_day$Day, "with temperature", coldest_day$Temp, "°F\n")

# Count the days with wind speed greater than 17 mph
wind_speed_gt_17 <- sum(airquality$Wind > 17)
cat("Number of days with wind speed > 17 mph:", wind_speed_gt_17, "\n")
