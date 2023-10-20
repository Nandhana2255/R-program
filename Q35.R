# Load the necessary library
library(dplyr)

# Load the ChickWeight dataset
data("ChickWeight")

# Order the data frame by "Diet" and then by "weight"
ordered_data <- ChickWeight %>% arrange(Diet, weight)

# Extract the last 6 records
last_6_records <- tail(ordered_data, 6)
print(last_6_records)

# Load the necessary library
library(reshape2)

# (a) Melting based on "Chick", "Time", and "Diet" features as ID variables
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(melted_data)

# (b) Casting to display the mean value of weight grouped by Diet
cast_data_mean <- dcast(melted_data, Diet ~ variable, fun.aggregate = mean)
print(cast_data_mean)

# (c) Casting to display the mode of weight grouped by Diet
library(dplyr)
cast_data_mode <- melted_data %>%
  group_by(Diet, variable) %>%
  summarise(mode = as.numeric(names(sort(table(value), decreasing = TRUE)[1])))
print(cast_data_mode)
