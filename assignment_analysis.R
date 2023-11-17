# Assignment: Biocomputing Exercise 9

# Part 1: Load data and produce a scatter plot with a trend line
library(ggplot2)

# Read the file
study_data <- read.csv("study_scores.csv", header = TRUE)

# Scatter plot with a trend line
ggplot(study_data, aes(x = Time_Spent_Studying, y = Score_On_Exam)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  xlab("Time Spent Studying (hours)") +
  ylab("Score On Exam") +
  ggtitle("Study Time vs Exam Score") +
  theme_minimal()

# Part 2: Generate two figures that summarize 'data.txt'

# Load the data
region_data <- read.csv("data.txt", header = TRUE)

# Barplot with mean of observations by region
ggplot(region_data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar", fill = "steelblue") +
  xlab("Region") +
  ylab("Mean Observations") +
  ggtitle("Average Observations by Region") +
  theme_minimal()

# Scatter plot with jitter of all observations
ggplot(region_data, aes(x = region, y = observations)) +
  geom_jitter(color = "coral", shape = 16, size = 2) +
  xlab("Region") +
  ylab("Observations") +
  ggtitle("Observations Scatter Plot") +
  theme_minimal()
