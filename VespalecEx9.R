#chose popsicles and temperature data for scatterplot. i assumed that a higher
#temperature results in more popsicle sales
library(ggplot2)
popsicle <- read.table(file="popsicles.txt", header=T, sep=",")

#ggplot basic function, adding points, adding x and y titles, trend line
ggplot(data = popsicle,
       aes(x = Temp.in.Degrees.Fahrenheit, y = Popsicles.Sold)) +
  geom_point() +
  xlab("Temperature in Degrees Fahrenheit") +
  ylab("Popsicles Sold") +
  stat_smooth(method="lm") +
  theme_classic()
  
#reading in data.txt
data <- read.table("data.txt", header=T, sep=",")
#barplot with means
ggplot(data=data, aes(x=region, y=observations))+ 
  geom_bar(stat="summary", fun.y="mean")

#scatter plot
ggplot(data=data, aes(x=region, y=observations))+ 
  geom_point()+
  geom_jitter()

#the barplot and scatter plot show different stories.
#this is expected because the barplot was created using means,
#and the scatterplot was created with the distribution of the points.
#the barplot indicates that all regions are fairly similar to each other because they have
#approximately the same means. however, the scatterplot shows the differences in their distributions.
#the east and west regions have a wide distribution, while the north region is heavily
#concentrated around its mean. the south region has 2 concentrations: one around 5
#the other between 20 and 30. the barplot does not show any of these distributions.

       