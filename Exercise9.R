# part 1
# create scatter plot of any two related variables and include a trend line
setwd('/Users/laurenlatimer/Biocomputing/Biocomputing_Exercise9')
tuition <- read.csv("tuition_data.csv", header=TRUE)

library(ggplot2)

ggplot(data=tuition, aes(x=in_state_total, y=mid_career_pay)) + 
  geom_point() + 
  geom_smooth(method=lm) +
  xlab("In-state Tuition") +
  ylab("Predicted Mid-Career Pay")

# part 2
region_data <- read.table("data.txt", sep=",", header=TRUE)

# a. barplot of the means of the four populations
ggplot(region_data, aes(x=region, y=observations)) + 
  stat_summary(fun = mean, geom = "bar") + 
  theme_classic() +
  xlab("Region") +
  ylab("Mean Observations")

# b. scatterplot of all of the observations
# note: may want to use geom_jitter() to see all observations
ggplot(region_data, aes(x=region, y=observations)) + 
  geom_jitter() +
  xlab("Region") +
  ylab("Observations")
  

# Q: Do the bar and scatter plot tell you different stories? Why?
# A: Yes, the bar and scatter plot tell different stories.
#    The bar plot indicates that all four populations are about the same. 
#    The scatter plot, however, provides more insight to the true spread of the data, and we can see that each region is quite unique. 
#    This is because the bar plot looks at one average value for each region, while the scatter plot looks at every point in each region.