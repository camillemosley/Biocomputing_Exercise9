#Exercise 9 Submission for Daniel Gatewood


rm(list=ls())
setwd("/Users/daniel/desktop/Biocomputing_Exercise9")
getwd()
library(ggplot2)


#Question 1:
#The data was made in excel using x's and y's that followed and exact function 
#and then used a random number function to generate the variance in the data

#The data is meant to represent proteomics data for the concentration of 
#different proteins in a control vs in response to a certain condition

prot<-read.csv("/Users/daniel/desktop/Biocomputing_Exercise9/Exercise9Data.csv")
ggplot(prot,aes(x=Initial,y=Final))+
  geom_point()+
  stat_smooth(method="lm")+
  xlab("Control Concentration (uM)")+
  ylab("Response Concentration (uM)")+
  theme_classic()

#Question2:
#show a barplot of the means of the four populations
data<-read.table("/Users/daniel/desktop/Biocomputing_Exercise9/data.txt",
                 sep=",",header=TRUE,stringsAsFactors=FALSE)
ggplot(data,aes(x=region,y=observations))+
  stat_summary(fun.y=mean,geom="bar")+
  theme_classic()+
  ylab("Mean number of Observations")

#show a scatter plot of all of the observations
ggplot(data,aes(x=region,y=observations))+
  geom_jitter()+
  theme_classic()+
  ylab("Observations")

#These plots do not tell the same story.
#The bar plot makes all 3 regions seem essentially the same,
#but each region has vastly different distributions of data.
#This is because each region dispite the different distributions of data,
#have almost the same overall average. Its important that figures encapsulate 
#all the important aspects of distributions of data, because the average is not 
#the only crucial description of data.




