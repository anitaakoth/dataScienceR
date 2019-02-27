library(tidyverse)
library(ggplot2)

#Exercise 3.6.1
#3.6.1.1 
#line- geom_line, box- geom_boxplot, histogram- geom_histogram, area- geom_area

#3.6.1.2
# the color aes is applied to both geoms
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

#3.6.1.3
#show.legend false disables the drv legend in geom_point, it was false bcz data is self explanatory

#3.6.1.4
#se is standard errors, this is the difference between the actual value of y and the predicted value of y

#3.6.1.5
#They display the same code.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

#3.6.1.6
#first plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

#second plot  , add droup  by drive
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv)) + 
  geom_point() + 
  geom_smooth()

#third plot  , add color aes
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth()

#fourth plot , clor aes in geom_point
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point( mapping = aes(color = drv)) + 
  geom_smooth()

#fifth plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point( mapping = aes(color = drv)) + 
  geom_smooth(mapping = aes(linetype = drv))

#sixth plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(aes(fill=drv), colour="white",pch=21, size=3) 



