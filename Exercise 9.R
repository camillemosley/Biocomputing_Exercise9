# Library ggplot
library(ggplot2)

# Part 1: Create a scatter plot with a trend line for two related variables

# Load iris data
iris <- read.table("iris.txt", header = TRUE, sep = "\t")

# Create a scatter plot of iris data
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point()+
  geom_smooth(method = "lm", se = FALSE)+
  labs( x = "Sepal Length", y = "Petal Length")+
  theme_classic()


# Part 2: Make plots from "data.txt"

# Load data from "data.txt"
data <- read.table("data.txt", header = TRUE, sep = ",")

# Create a barplot of means for the four populations
ggplot(data, aes(x = region, y = observations))+
  geom_bar(stat = "summary", fun = "mean", fill = "blue")+
  labs(x = "Region", y = "Mean Observations")+
  theme_classic()

# Create a scatter plot of all observations with jitter
ggplot(data, aes(x = region, y = observations))+
  geom_jitter(width = 0.2, height = 0.2, alpha = 0.1)+
  labs(x = "Region", y = "Observations")+
  theme_classic()
 

# Do the bar and scatter plots tell you different stories? Why?
# The barplot tells the story that all of the regions have similar mean observations.
# A bar plot is only capable of showing a mean value as well as standard deviations.
# However, a scatter plot is able to show the distribution of observations across regions.
# This figure depicts a different story then the barplot as the distribution of observations in each
# region is shown. This allows the reader to understand much more detailed variation and draw more conclusions
# from the data then would be possible by observing a barplot. One conclusion you can draw from the scatter plot
# that you may not be able to from the bar plot is that there are a large number of data with around 7
# observations in the southern region.