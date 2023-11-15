# Czerwiec, Mae
# Exercise 9
# Intro to Biocomputing

install.packages("ggplot2")
library(ggplot2)

# Question 1

weather=read.table("temps.txt", header=TRUE, sep='\t')

ggplot(data=weather, aes(x=Temperature, y=Wind_Speed)) +
  geom_point() +
  stat_smooth(method="lm") +
  xlab("Temperature (ºF)") +
  ylab("Wind Speed (MPH)") +
  theme_classic()

# Question 2

vals=read.table("data.txt", header=TRUE, sep=',')

ggplot(data=vals, aes(x=region, y=observations)) +
  stat_summary(geom="bar", fun = mean, color="gray28", fill="mediumseagreen")

ggplot(data=vals, aes(x=region, y=observations)) +
  geom_jitter()+
  theme_classic()

## Do the plots tell different stories?
## Yes. The histograms of the means show that all 4 regions have similar average values.
## However, the "jitter" or scatter plot shows that the 
## east region has a broad range of values clustered evenly around the mean
## north region has many very similar values clustered tightly around the mean
## south region has two groups of values, one high, one low, that average out
## and west has the the broadest range of values that generate a similar mean.
## Therefore, east and west are similar across both plots, but
## differences in north and south are only made apparent in the 2nd plot.