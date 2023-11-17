#exercise 9
#11/16/2023

#this function removes everything in environment from previous session
#good to use this at beginning of script since following code means it is self contained and not relying on something that was left last session
rm(list=ls())

# load a package every time you wish to use it
library(ggplot2)
library(cowplot)

#PART 1
#Bring in two variables of data that are related to each other and make a scatter plot with a trendline included

#data obtained from https://allears.net/walt-disney-world/wdw-planning/wdw-ticket-increase-guide/
#date in column 1, price of general admission Disneyland ticket column 2


# read in data
disney_data = read.table("part1_ex9.txt",header=TRUE,)
disney_data
# make sure everything looks correct
head(disney_data)

# plot of date vs cost
ggplot(disney_data,
       aes(x = Year, y = Price)) +
  geom_point() 

# add a linear trendline
ggplot(disney_data, 
       aes(x = Year, y = Price)) + 
  geom_point() +
  xlab("Year of Price Increase(s)") + 
  ylab("Price in $") +
  stat_smooth(method="lm") +
  theme_classic()


#PART 2
#use data.txt to generate a barplot of the means of the four populations
#create a scatter plot of all observations
#answer whether the bar and scatter plots tell different stories and why


#read in data
data = read.table(file = "data.txt",sep=',',header=TRUE)
head(data)

#barplot of means of the four populations
ggplot(data,
       aes(region, observations)) +
  geom_bar(position='dodge', stat = 'summary', fun='mean')

# scatter plot of region vs observations
ggplot(data,
       aes(x = region, y = observations)) +
  geom_point() 

#Question: Do the bar and scatter plots tell you different stories? Why?

#Yes, since the bar plot does not show any sort of distribution.
#The scatter plot shows the range of observations, but if we only
#looked at the bar plot we wouldn't know if the observations were
#all very close to the mean, or if there were some far away from the mean.