library(tidyverse)
library(ggplot2)

#Exercise 3.5.1

#3.5.1.1 
#Map continuous variable. A continuous variable does not give  difinitve facet mapping
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ cty, nrow = 2)

#3.5.1.2 
#Empty cells mean there are no corresponding wheel drives with the named no of cylinders
#The 2 mappings relatively similar
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl)) + 
  facet_grid(drv ~ cyl)

#3.5.1.3
#this facets in the column
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)
#this facets in the row
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

#3.5.1.4
#faceting gives a better distinction than color aesthetic.
#For a larger dataset, color aes might be a better option
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

#3.5.1.5
#nrow specifies no of rows to display
#ncol specifies no of column to be displayed
#facet_grid does not have these , it specifies the data mapping rows and columns instead

#3.5.1.6
#use finite sets in the columns so as to give a more difinitive mapping of the data
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)