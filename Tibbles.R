library(tidyverse)
as_tibble(iris)
tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)
tribble(
  ~x, ~y, ~z,
  #--|--|----
  "a", 2, 3.6,
  "b", 1, 8.5
)
nycflights13::flights %>% 
  print(n = 20, width = Inf)

package?tibble

nycflights13::flights %>% 
  View()

df <- tibble(
  x = runif(5),
  y = rnorm(5)
)
df

# Extract by name
df$x

df[["x"]]

# Extract by position
df[[1]]

#10.5 Exercises

#Question 1 
#A tibble object will support printing and subsetting of data

mtcars %>% 
  print(n = 20, width = Inf)
#returns error  : Error in print.default(m, ..., quote = quote, right = right, max = max) : 
#invalid 'na.print' specification

#Question 2
#data frame
df <- data.frame(abc = 1, xyz = "a")
df
df$x
df[, "xyz"]
df[, c("abc", "xyz")]
#the data frame just lists the values without specifying data types

#tibble
df <- tibble(abc = 1, xyz = "a")
df
df[, "xyz"]
df[, c("abc", "xyz")]
#the tibble specifying data types

#Question 3
# Extract by variable in the tibble by name
var$the_variable_name

#Question 4
annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`))
)
annoying

#4.1 extract 1
annoying$`1`

#4.2 scatter plot 1 vs 2
ggplot(data = annoying) + 
  geom_point(mapping = aes(x = `1`, y = `2`))

#4.3
new_annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`)),
  `3` = `2` / `1`
)
new_annoying

#4.4 
 
#Question 5
#enframe() converts named atomic vectors or lists to one- or two-column data frames

#Question 6
#print(n = 10, width = Inf)