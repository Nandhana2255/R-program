# Calculate summary statistics
summary(airquality)

# Melt the dataset with "Month" and "Day" as ID variables
melted_data_with_ids <- melt(airquality, id.vars = c("Month", "Day"))

# Melt the dataset to long format
library(reshape2)
melted_data <- melt(melted_data_with_ids)
head(melted_data)

# Cast the molten data using the dcast function
casted_data <- dcast(melted_data_with_ids, Month + Day ~ variable)
print(casted_data)

# Cast and calculate the averages
averages_per_month <- dcast(melted_data_with_ids, Month ~ variable, fun.aggregate = mean)
print(averages_per_month)