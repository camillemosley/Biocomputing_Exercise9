# Biocomputing Exercise 9 
# Caroline Daniher

setwd("~/Desktop/R Biocomputing/Biocomputing_Exercise9")
install.packages("ggplot2")
install.packages("cowplot")
install.packages("readxl")
library(readxl)
library(ggplot2)
library(cowplot)

#1 Upload data and create a scatter plot with it 
# I chose to take data showing the number of steps I have and the hours of sleep I get. 
# The data is from my smart watch 
data<-read_excel("~/Desktop/R Biocomputing/Biocomputing_CarolineDaniher.xlsx")
ggplot(data, aes(x = data$`Hours of Sleep`, y = data$`Daily Steps`)) + 
  geom_point() +
  xlab("Hours of Sleep") + 
  ylab("Daily Steps") +
  stat_smooth(method="lm") +
  theme_classic()

#2 
second_data = read.table("data.txt", header=TRUE, sep=",")
# Create a bar plot first
ggplot(second_data, aes(x=region,y=observations)) +
  geom_bar(stat = "summary", fun = "mean") +
  xlab("Region") + ylab("Mean of Obersations") + 
  theme_bw()

# Create a scatter plot 
ggplot(second_data, aes(x = region, y = observations)) + 
  geom_point() +
  geom_jitter() +
  xlab("Region") + 
  ylab("Observations") +
  theme_classic()

# Yes the different plots show different things. The bar plot shows the mean observations across 
# each region. The average mean is roughly the same across all of the regions, meaning we do
# not see a significant difference. It does not account for variance
# However, when we look at the scatter plot, this plot shows each individual data point. As a result
# we can interpret the variance across each region and what is actually happening. 
# The scatter plots gives a lot more information than the bar plot in this case because it shows the clumping
# or the wide variance of observations depending on the region. The bar plot of the means can't show this.

