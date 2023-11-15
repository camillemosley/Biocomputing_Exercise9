# Biergans Exercise 9

# Part 2

# Read the data from the file
data <- read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Calculate the means for each region and plot the bar chart
means <- aggregate(observations ~ region, data, mean)
barplot(means$observations, 
        names.arg = means$region, 
        main = "Mean Observations of Each Region",
        xlab = "Region", ylab = "Mean Observations", col = "blue")

# Scatter plot of all observations
plot(jitter(as.numeric(factor(data$region))), data$observations, 
     main = "Observations in Each Region",
     xlab = "Region", ylab = "Observations", pch = 19, col = rgb(0, 0, 1, 0.1),
     xaxt = "n") # Turn off x-axis to add custom labels
axis(1, at = 1:length(levels(factor(data$region))), labels = levels(factor(data$region)))
