# Load the USArrests dataset
data("USArrests")

# (i) a. Explore the summary of the dataset
# Number of features and their types
print("Number of features and types:")
str(USArrests)

# Number of records for each feature
print("Number of records for each feature:")
sapply(USArrests, length)

# Statistical summary of the dataset
print("Statistical summary of the dataset:")
summary(USArrests)

# (i) b. Print the state with the largest total number of rape
max_rape_state <- USArrests[which.max(USArrests$Rape), "Rape"]
max_rape_state_name <- row.names(max_rape_state)
cat("State with the largest total number of rape:", max_rape_state_name, max_rape_state, "\n")

# (i) c. Print states with max & min crime rates for murder
max_murder_state <- USArrests[which.max(USArrests$Murder), "Murder"]
min_murder_state <- USArrests[which.min(USArrests$Murder), "Murder"]
max_murder_state_name <- row.names(max_murder_state)
min_murder_state_name <- row.names(min_murder_state)
cat("State with the highest murder rate:", max_murder_state_name, max_murder_state, "\n")
cat("State with the lowest murder rate:", min_murder_state_name, min_murder_state, "\n")

# (ii) a. Find the correlation among the features
correlation_matrix <- cor(USArrests)
print("Correlation matrix:")
print(correlation_matrix)

# (ii) b. Print states with assault arrests more than the median
median_assault <- median(USArrests$Assault)
states_above_median_assault <- row.names(USArrests[USArrests$Assault > median_assault, ])
cat("States with assault arrests more than the median:", paste(states_above_median_assault, collapse = ", "), "\n")

# (ii) c. Print states in the bottom 25% of murder
murder_25th_percentile <- quantile(USArrests$Murder, 0.25)
states_bottom_25_percent_murder <- row.names(USArrests[USArrests$Murder < murder_25th_percentile, ])
cat("States in the bottom 25% of murder:", paste(states_bottom_25_percent_murder, collapse = ", "), "\n")

# (iii) a. Create a histogram and density plot of murder arrests
hist(USArrests$Murder, main="Histogram of Murder Arrests", xlab="Murder Arrests")

# (iii) b. Create a scatterplot showing murder arrest rate and urban population proportion
plot(USArrests$UrbanPop, USArrests$Murder, xlab="Urban Population Proportion", ylab="Murder Arrest Rate", main="Murder Arrest Rate vs. Urban Population Proportion", pch=19, col=USArrests$Assault)

# (iii) c. Create a bar graph of the murder rate for each state
barplot(USArrests$Murder, names.arg=rownames(USArrests), main="Murder Rate by State", xlab="State", ylab="Murder Rate")
