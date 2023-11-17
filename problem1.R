library(tidyverse)

mtcars_sub = read.csv("mtcars_wt_disp.csv")

# scatter plot with linear regression
ggplot(mtcars_sub,
       aes(x = wt, y = disp)) +
  geom_point() +
  xlab("Engine displacement (cu.in.)") +
  ylab("Car weight (10e3 lbs)") +
  stat_smooth(method="lm")
