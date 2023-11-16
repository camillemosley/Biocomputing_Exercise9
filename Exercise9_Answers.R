#Exercise 9
#2023-11-10

setwd("~/Desktop/Biocomputing2023/Git_Home_Repo/Exercises/Biocomputing_Exercise9//")
library(ggplot2)

#1. Find some data on two variables that you would expect to be related to each 
#     other. These data can come from your own research, your daily life, or the 
#     internet. Enter those data into a text file or Excel and then save a text 
#     file, and write a script that loads this text file and produces a scatter 
#     plot of those two variables that includes a trend line.

Vari2=read.table("Two_Variables.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
  dim(Vari2)

  ggplot(data = Vari2,
         aes(x = Studying, y = Grade)) +
    geom_point() +
    xlab("Days Studied") +
    ylab("Exam Grade") +
    stat_smooth(method="lm") +
    theme_classic()
  
  
#2. Given the data in “data.txt”. Write a script that generates two figures that
#     sumamrize the data. First, show a barplot of the means of the four 
#     populations. Second, show a scatter plot of all of the observations. You 
#     may want to “jitter” the points (geom_jitter()) to make it easier to see 
#     all of the observations within a population in your scatter plot. 
#     Alternatively, you could also try setting the alpha argument in 
#     geom_scatterplot() to 0.1. Answer the following questions as a comment in
#     your R script - Do the bar and scatter plots tell you different stories? Why?
  
Data = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
table(Data$region)

#Fig 1
ggplot(data = Data, aes(x = region, y = observations)) + 
  stat_summary(geom="bar", fun.y = "mean") +
  stat_summary(geom="errorbar", fun.data = "mean_se", width=0.3) +
  xlab("Region") +
  ylab("Observations") +
  theme_bw()

#Fig 2
ggplot(data = Data, aes(x = region, y = observations)) + 
  geom_jitter(shape=22) +
  theme_classic()


#Do the bar and scatter plots tell you different stories? Why?
  #both plots tell different stories, because the bar plot only shows the average number of observations 
  #so you are not able to determine if there are any outliers. While in the scatter 
  #you are able to see all points so you are able to see the distribution of the point.
















































