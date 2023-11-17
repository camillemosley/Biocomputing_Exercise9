#challenge1
library(ggplot2)
exercise9 <- read.csv("exercise9.csv", header= TRUE, sep=",")
ggplot(data=exercise9,aes(x=Time,y=Foldchange))+
  xlab("Hours after treatment")+
  ylab("mRNA fold change")+
  geom_point()+
  geom_smooth(method="loess",se=FALSE)

#challenge2
data <- read.table("data.txt", header = TRUE, sep=",")
#bar plot of the means of four populations
ggplot(data, aes(x = region, y = observations)) +
  stat_summary(geom="bar",fun.y= mean)+
  stat_summary(geom="errorbar",fun.data=mean_se,width=0.5)+
  labs(title = "Bar Plot of the Mean of Four Populations",
       x = "region",
       y = "observations")+
  theme_bw()
#scatter plot
ggplot(data, aes(x = region, y = observations)) +
  geom_jitter(width = 0.3, height = 0, alpha = 0.1) +
  labs(title = "Scatter Plot of Observations",
       x = "region",
       y = "observations") +
  theme_minimal()
#Bar plot of the mean and scatter plot tell different stories. The bar plot
#tells us the mean of four population and we see no much difference between them.
#And the scatter plot tells us the distribution of the data intuitively,from 
#which we can see that data in north is more focused than any other group.