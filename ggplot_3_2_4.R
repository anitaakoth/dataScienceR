library(tidyverse)
library(ggplot2)
#Exercise 3.2.4

#3.2.4.1
result<-ggplot(data = mpg)

#3.2.4.2 Answer: 234 rows 11 columns
  
#3.2.4.3 drv is wheel drive type, front/rear/4wd

#3.2.4.4 scatter plot hwy vs cyl
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = cyl))

#3.2.4.5 scatter plot class vs drv 
# There are various types of classes with various types of wheel drives ,so the data does not give 
# specific data 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))
