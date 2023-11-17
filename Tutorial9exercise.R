# Exercise 09 - Intro to Biocomputing
# Lindsay Burgess


# 1 Find two variables that are related to each other. Load a text file and produce a scatterplot with a trend line (data compares number of hours of sleep and amount of coffee consumed in oz)
library(ggplot2) #load ggplot
library(cowplot) #load cowplot
sleepcoffee<-read.table("exercise9data.txt",header=TRUE,sep="\t") #load text file
head(sleepcoffee) #view top rows of file
#create a scatterplot with labeled axes and a trend line
ggplot(data=sleepcoffee,
       aes(x=sleep,y=coffee))+
  geom_point()+
  xlab("sleep (in hours)")+
  ylab("coffee (in oz)")+
  ggtitle("Hours of Sleep vs. Amount of Coffee Consumed")+
  stat_smooth(method="lm")+
  theme_classic()

# 2 
file<-read.table("data.txt",header=TRUE,sep=",") #load data.txt file and store in data
head(file) #read first few lines of data 
#generate bar plot with the means of the four populations
#find the mean of each population
# Create a bar plot for the means of four populations, color code by region and create axes and a graph title
ggplot(data=file, 
       aes(x=region, y=observations, fill=region))+
  stat_summary(geom="bar",fun="mean")+
  scale_fill_manual(values=c("blue","green","pink","orange"))+
  xlab("Region")+
  ylab("Mean Observataions")+
  ggtitle("Mean Observations by Region")+
  theme_classic()
# Create a Scatter plot of all the observations
# Scatter plot of all observations with alpha set to 0.1 using geom_point, give the graph axes and a title
ggplot(data=file, 
       aes(x=region,y=observations))+
  geom_point(alpha=0.1)+
  xlab("Region")+
  ylab("Observations")+
  ggtitle("Scatter Plot of Observations by Region")+
  theme_classic()

# Do the bar and scatter plots tell you different stories? Why?
# Both the scatter plot and bar plot do tell different stories. Although the bar plot shows that the means all seem to be around 15 for each region, the scatter plot reveals that the distribution of the observations for each region has a very different range and concentration of values