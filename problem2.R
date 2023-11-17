library(tidyverse)

# reading data
data = read.csv("data.txt")

# bar plot
ggplot(data, aes(x = region, y = observations)) +
  geom_bar(position = "dodge", stat = "summary", fun = "mean") +
  xlab("Region") +
  ylab("Observations")

# scatter plot
ggplot(data, aes(x = region, y = observations)) +
  geom_jitter(alpha = 0.1)

# The bar plot only shows a summary statistic of data, which in this case is mean. Mean is not a very good summary statistic in this case, since in the scatter plot we can see that south observations have a bimodal distribution, and north observations have a smaller variance compared to east and west. Therefore, yes, they tell different stories.