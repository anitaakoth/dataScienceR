library(tidyverse)
library(ggplot2)
 
my_variable <- 10
my_variable

 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)

filter(diamonds, carat > 3)


