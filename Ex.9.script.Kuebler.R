#Patrick Kuebler Exercise 9 submission

#loads in packages
library(ggplot2)

#loads a text file that contains data on every premier league team in 2022
#the "wages" column contains every clubs annual player wage bill in millions of pounds
#the "position" column lists every clubs position in the table at the end of the season
#Basically, it has data on how well a team does compared to how much they spend on players
soccer<-read.table("soccer.txt",header=TRUE,sep="\t",stringsAsFactors = FALSE)
dim(soccer)

#scatter plot of annual wages vs table position
#expect a negative trend since higher table position means lower numbers
ggplot(soccer,
       aes(x=wages,y=position)) +
  geom_point() +
  xlab("Annual Wage Bill (millions of pounds)") +
  ylab("Final Position in Table") + 
  stat_smooth(method="lm") +
  theme_classic()

#loads the data.txt file into R
data<-read.table("data.txt",header=TRUE,sep=",",stringsAsFactors = FALSE)
dim(data)

#bar plot of the means of all four regions
ggplot(data=data,
       aes(x=region,y=observations)) +
  stat_summary(fun.y="mean",
               geom="bar") +
  xlab("Region") +
  ylab("Mean Observations") +
  theme_classic()

#scatter plot of region and observations
ggplot(data=data,
       aes(x=region,y=observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()


#the bar plot does not tell you about the distribution of the data, only the average.
#the scatter plot shows you the distribution, which is very different between the regions,
#although the average observations are similar across regions.
#If you just looked at the bar plot, every region would look pretty much the same,
#since the mean observation is similar between regions, but the scatter plot shows you 
#that there are strong differences in the distribution of data between the regions