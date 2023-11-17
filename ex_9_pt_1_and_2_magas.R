#exercise 9 part 1
#11/16/2023
#data obtained from https://allears.net/walt-disney-world/wdw-planning/wdw-ticket-increase-guide/
#date in column 1, price of general admission Disneyland ticket column 2

#this function removes everything in environment from previous session
#good to use this at beginning of script since following code means it is self contained and not relying on something that was left last session
rm(list=ls())

# load a package every time you wish to use it
library(ggplot2)
library(cowplot)


# read in data
data = read.table("part1_ex9.txt",header=TRUE,)
data
# make sure everything looks correct
head(data)

# plot of date vs cost
ggplot(data,
       aes(x = Year, y = Price)) +
  geom_point() 

# add a linear trendline
ggplot(data, 
       aes(x = Year, y = Price)) + 
  geom_point() +
  xlab("Year of Price Increase(s)") + 
  ylab("Price in $") +
  stat_smooth(method="lm") +
  theme_classic()
