setwd("/Users/vivianyang/Desktop/Biocomputing")
library(ggplot2)
library(cowplot)
num <- read.csv("data.txt", header=TRUE, stringsAsFactors = FALSE)

#barplot with mean of the populations
ggplot(num, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  theme_bw() +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

#Scatter plot of all the observations
ggplot(data = num,
       aes(x = region, y = observations)) +
  geom_point(color = "red", shape = 21, size = 1) +
  xlab("region") +
  ylab("observations") +
  theme_classic()
