#exploratory data analysis
library(tidyverse)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
diamonds %>% 
  count(cut)
diamonds %>% 
  count(cut_width(carat, 0.5))
smaller <- diamonds %>% 
  filter(carat < 3)

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(xlim = c(0, 10))

unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  select(price, x, y, z) %>%
  arrange(y)
unusual

#Exercise 7.3.4 

#Question 1
diam <-select(diamonds, price,x,y,z)
ggplot(data = diam) +
  geom_bar(mapping = aes(x = x))
ggplot(data = diam) +
  geom_bar(mapping = aes(x = y))
ggplot(data = diam) +
  geom_bar(mapping = aes(x = z))
# x seems to be the depth  

#Question 2

#Question 3
carat99 <- diamonds %>% 
  filter(carat == 1)

ggplot(data = carat99, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth=0.3)

#Question 4
ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y),binwidth = 0.5 ) +
  coord_cartesian(ylim = c(0, 50))
#When no bin width is set we get the message: `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

