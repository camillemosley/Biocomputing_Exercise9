## tutorial exercise 9

getwd()
getwd()
setwd("/Users/faithschafer/Downloads/Biocomputing_Exercise9")
install.packages("readxl")
library("readxl")

food <- read_excel("fooddata.xlsx")
View(food)
write.table(food, file = "food.txt", sep = "\t",
            row.names = TRUE)
food

library(ggplot2)

##scatterplot
ggplot(data=food, aes(x=tea, y=cookies, color="magenta")) + geom_point(size=2, shape = 20) +
geom_smooth(method=lm) +
  geom_jitter() +
xlab("cups of tea drank") +
ylab("cookies eaten")
  

info <- read.csv ("data.txt")
head (info)

##bar plot
ggplot(info, aes(x =region, y =observations, fill=factor(region))) +
  geom_boxplot() + 
  xlab("Region") +
  ylab("Number of Observations")

##scatterplot
ggplot(data=info, aes(x=region, y=observations, alpha=0.1, color=factor(region))) + geom_point(size=2, shape = 20) +
  geom_jitter() +
  xlab("Region") +
  ylab("Number of Observations")


## the bar and the scatterplot do show different stories, particularly for the south region and the north region. 
## the south region is not as evenly distributed as it appears to be (there are two distinct clusters- if this was a curve graph, it would be bimodal)
## the north region is also not as it appears: it has a few outliers, but that is just because everything is so tightly clustered around the mean


