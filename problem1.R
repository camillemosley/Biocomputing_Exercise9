library(tidyverse)

mtcars_sub = read.csv("mtcars_wt_disp.csv")

mtcars_sub = mtcars_sub %>%
  pivot_longer(!X, name)

ggplot(mtcars_sub,
       aes(x = wt, y = disp)) +
  geom_point() +
  xlab("Engine displacement (cu.in.)") +
  ylab("Car weight (10e3 lbs)") +
  stat_smooth(method="lm")