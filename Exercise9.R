# Removing any pre-existing environment variables
rm(list=ls())
# Set working directory
setwd("C:/Users/student/Desktop/Notre Dame/Fall 23/Biocomp/Biocomputing_Exercise9")
# Loading necessary packages
library(ggplot2)
library(cowplot)

## Question 1 ##

# Read in data
banana <- read.csv('bananaindex.csv', header = TRUE)
## The banana index gives the greenhouse-gas emissions of foods - by weight, calorie, 
## or protein - by their equivalent in bananas. Greenhouse-gas emissions are in 
## CO2-equivalents, with non-CO2 gases converted according to the amount of warming 
## they cause over a 100-year timescale. DOI: 10.1126/science.aaq021

#### Color-blind friendly color palette
cbp1 <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
          "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
## Scatter plot of 
ggplot(banana, aes(x=`emissions_100g_protein`, y=`Land.use.per.100.grams.of.protein`)) +
  geom_point(size=4, alpha=0.4, colour="#D55E00", fill="cornsilk", stroke=2, shape=24) +
  theme_classic() +
  xlab("Emissions of CO2-equivalents per 100 g of protein") + ylab("Land use per 100 g of protein") +
  geom_smooth(method="lm", colour="#0072B2", fill="#56B4E9")


## Question 2 ##

# Read in data.txt
dt <- read.table("data.txt", header = TRUE, sep = ",")
# Bar plot of means for the 4 populations (north, east south, west)
## Finding the means of each population
north_mean <- mean(dt[dt$region == "north",]$observations)
east_mean <- mean(dt[dt$region == "east",]$observations)
south_mean <- mean(dt[dt$region == "south",]$observations)
west_mean <- mean(dt[dt$region == "west",]$observations)
## Creating a dataset with the populations and their respective means
pop_means <- c(north_mean, east_mean, south_mean, west_mean)
pop <- unique(dt$region)
means_sum <- data.frame(pop, pop_means)
## Bar plot
ggplot(means_sum, aes(x=as.factor(pop), y=pop_means, fill=as.factor(pop))) +
  geom_col() + theme_classic() +
  xlab("Population Region") + ylab("Mean Observations") +
  scale_fill_manual(values=cbp1)
#### Color-blind friendly color palette
cbp1 <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
          "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
# Scatter plot of all observations
ggplot(dt, aes(x=region, y=observations, color=region)) +
  geom_jitter(alpha=0.6, size=3, shape=18) + theme_classic() + scale_color_manual(values=cbp1)

#### The bar and scatter plots do tell different stories. While the bar plot summarizes the means
#### of the populations, it doesn't show the spread of observations as in the scatter plot.
#### Therefore, the bar plot is a more simple visualization with only the mean whereas the
#### scatter plot is able to visually display more qualitative information about the data such
#### as the spread.