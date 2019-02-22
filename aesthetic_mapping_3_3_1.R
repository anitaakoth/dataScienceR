library(tidyverse)
library(ggplot2)
#Exercise 3.3.1

#3.3.1.1 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# it is not blue because the color aesthetic param is declared within the mapping variable

#3.3.1.2
#categorical variables- take finite set of values: manufacturemodel, year, trans, drv, fl, class
#continuous variable - take range of values: displ, cyl, cty, hwy

#3.3.1.3
# the color aesthetic varies by color shade
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy,color = cyl ))

# the size cyl aesthetic varies by intensity
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl ))

# the shape aesthetic throws an Error: A continuous variable can not be mapped to shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = cty ))

#3.3.1.3 
#same variable to multiple aesthetics, Creates 2 legends for continuous variable
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, color = cyl ))

#3.3.1.4
#stroke modifies the width of the object
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl,  stroke = cyl ) )


#3.3.1.5
# colour = displ < 5 give plots with 2 different  colours to true or false
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = displ < 5))




             