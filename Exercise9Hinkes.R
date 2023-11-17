# Exercise 9 - Connor Hinkes
# The data in my "scores" file contains data on two variables: hours studied and exam score

library("ggplot2")

# 1. Creating a graph based on my example data with correlated variables
# First load the data
data <- read.table("Scores.txt", sep = "\t", col.names = c("Hours_Studied", "Exam_Score"))
#Next, create the graph
ggplot(data, aes(x = Hours_Studied, y = Exam_Score)) +
  geom_point() +
  stat_smooth(method = "lm") +   
  labs(title = "Scatter Plot of Hours Studied vs. Exam Score",
       x = "Hours Studied",
       y = "Exam Score") +
  theme_classic()

# 2. Data.txt plots
# First load the data from "data.txt" 
data<-read.csv("data.txt")
# Bar plot with means for each population
ggplot(data, aes(x=region, y=observations)) +
  stat_summary(fun = mean, geom = "bar") +  
  xlab("Region") +
  ylab("Observations") +
  theme_classic()


# Scatterplot of all data
ggplot(data, aes(x=region, y=observations))+
  xlab("Region") +
  ylab("Observations") +
  geom_jitter() + 
  theme_classic()

# 3. Answer to the final question
# The scatter plot reveals the detailed distribution of data points across each population.
# Specifically, it's noticeable how populations like north and south are clustered around few values,
# indicating less variability, in contrast to east and west which exhibit a wider range of values 
# and more variability.
# This difference in the spread and range of values is a critical aspect of each population's unique data profile.
# In contrast, the bar plot, by focusing solely on the mean, masks these differences, creating an impression of 
# similarity among the populations that doesn't reflect their actual diversity in data distribution.
