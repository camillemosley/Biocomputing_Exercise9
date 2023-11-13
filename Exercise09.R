library(ggplot2)
setwd("/Users/pengqiushi/Documents/Biocomputing")

### Question 1
# plot
# I want to look at the realationship between yearsSchool and wage
wages <- read.csv("wages.txt", header = TRUE)
ggplot(data = wages, aes(x = yearsSchool, y = wage)) +
  geom_point() +
  stat_smooth(method="lm") +
  theme_bw()


### Question 2
# read in data
data <- read.table("data.txt", header = TRUE, sep = ",")

# show a barplot of the means of the four populations
ggplot(data = data, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean, geom = "bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar", width = 0.5) +
  xlab("Region") +
  ylab("Observations") +
  theme_bw()

# show a scatter plot of all of the observations
ggplot(data = data, aes(x = region, y = observations)) +
  geom_jitter()

# Question: Do the bar and scatter plots tell you different stories? Why?

# Answer: Yes. 
# From the bar plot of means, I can't tell the differences between them. 
# However, I can clearly see the differences in distribution between different regions. 

