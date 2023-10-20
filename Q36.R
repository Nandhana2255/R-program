# Load the necessary library
library(ggplot2)

# Create a box plot
boxplot_plot <- ggplot(ChickWeight, aes(x = Diet, y = weight)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight")

print(boxplot_plot)

# Filter the data for Diet category 1
diet_1_data <- ChickWeight[ChickWeight$Diet == 1,]

# Create a histogram
histogram_plot <- ggplot(diet_1_data, aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(title = "Histogram of Weight for Diet 1", x = "Weight", y = "Frequency")

print(histogram_plot)

# Create a scatter plot
scatter_plot <- ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight") +
  scale_color_discrete(name = "Diet")

print(scatter_plot)

