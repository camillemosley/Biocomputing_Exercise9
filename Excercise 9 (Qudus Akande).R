#Excercise 9
#November 17, 2023

#Question 1 : write script that loads text file and produces scattered plot.
library(ggplot2)
library(cowplot)

#Set working directory to where file is saved.
setwd("~/Desktop/Biocomputing")
file1 <- read.table("Data_file.txt", header=TRUE, sep="\t" ,stringsAsFactors = FALSE)
ggplot(data = file1, aes(x = Spending, y = Revenue))+geom_point()+xlab("Spending($)")+ylab("Revenue($)")+stat_smooth(method="lm")+theme_classic()


#Question 2 : write a script that generates two figures that summarizes the data.
setwd("~/Desktop/Biocomputing")
library(ggplot2)
library(cowplot)
figure <- read.csv("data.txt", header=TRUE, stringsAsFactors = FALSE)

#create a bar plot with population mean
ggplot (data = figure, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  theme_bw() +
  theme(axis.text.x = element_text(angle=55, vjust=0.8))

#Scatter plot of all the observations
ggplot(data = figure,
       aes(x = region, y = observations)) +
  geom_jitter(color = "orange", shape = 1, size = 2) +
  xlab ("region")+
  ylab ("observations") +
  theme_classic()

# The bar and the point tells a different stories because the bar is showing the average of all observed data under each categories while the point is showing individual data and there are actually repetitive data.
