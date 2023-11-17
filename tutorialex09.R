## tutorial exercise 9

getwd()
getwd()
setwd("/Users/faithschafer/Downloads")

food <- read_excel("fooddata.xlsx")
View(food)
write.table(food, file = "food.txt", sep = "\t",
            row.names = TRUE)
food

library(ggplot2)

##scatterplot
ggplot(data=food, aes(x=tea, y=cookies)) + geom_point(size=2, shape = 20) +
geom_smooth(method=lm) +
  geom_jitter() +
xlab("cups of tea drank") +
ylab("cookies eaten")
  
