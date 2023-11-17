#Nicholas Buhay
#Exercise 9

#Problem 1
#Setting working directory for Problem 1
setwd("/Users/nicholasbuhay/Desktop/Biocomputing/Exercise9/Biocomputing_Exercise9")
#Loading ggplot
library("ggplot2")
#loading the text file with the data
coffeedata<-read.csv("sleepvscoffee.txt")
#Creating a scatter plot with a trendline
ggplot(coffeedata, aes(x=hoursofsleep, y=numberofcoffeesconsumed))+
  geom_point() +
  xlab("Hours of Sleep") +
  ylab("Number of Coffees Consumed") +
  theme_bw() +
  stat_smooth(method="lm")

#Problem 2
#Loading data
data<-read.csv("data.txt")
#Creating the bar plot with means for each population
ggplot(data, aes(x=region, y=observations)) +
  stat_summary(fun = mean, geom = "bar") +  
  xlab("Region") +
  ylab("Observations") 

#Creating the scatter plot
ggplot(data, aes(x=region, y=observations))+
  xlab("Region") +
  ylab("Observations") +
  geom_jitter()

#Do the bar and scatter plots tell you different stories?
#Yes. The scatter plot shows you every data point for each population. This allows you to see that each population is actually very different.
#For instance, the north and south populations are very concentrated around one or two values, while east and west have a lot of variability.
#Each population has a signifgantly different variability and range
#Because the bar plot only gives the mean, it seems like the populations are all very similar when they are in fact not.