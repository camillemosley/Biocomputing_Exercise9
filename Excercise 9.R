#Exercise 9 Mark Jantz

#clear preexisting variables 
rm(list=ls())
# Set working directory
setwd("/Users/mark/Downloads/")
#load libraries
library(ggplot2)
library(cowplot)

#Question 1:
#Data on IQ scores VS highest SAT scores
#Loads text file
sat<-read.table("/Users/mark/Downloads/SAT.txt", sep="\t",header=TRUE)
#Produces a scatterplot of, SAT (x-axis) vs IQ (y-axis)
ggplot(sat,aes(x=SAT,y=IQ))+
  geom_point()+
  stat_smooth(method="lm")+
  xlab("SAT")+
  ylab("IQ")+
  theme_classic()
# Question 2: 

data <- read.csv("/Users/mark/Downloads/data.txt",
header=TRUE,stringsAsFactors = FALSE)

#Barplot showing the means of the four populations organized by region on the x axis
ggplot(data,aes(x=region,y=observations))+
  stat_summary(geom="bar",fun.y=mean)+
  theme_classic()+
  ylab("Mean Number of Observations")

#Scatter plot of all of the number observations rganized by region on the x axis
ggplot(data,aes(y=observations,x=region))+
  geom_jitter()+ylab("Observations")+
  theme_classic()



# The Bar chart and the scatter plot tell different stories of the data
# While the bar chart shows that the mean number of observations is similar,
# The scatterplot shows that the variance/distribution between each of the mean number of observations 
# In each region are very diffrent. North is very concentrated south has 2 seprate means
# West is very distributed and east is slighlty more conslidated but also very distributed

