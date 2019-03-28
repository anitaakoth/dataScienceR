library(tidyverse)
library(nycflights13)

#Exercise 5.2.4 Question 1
filter(flights, (arr_delay >= 120 ))

filter(flights, (dest== 'IAH' | dest== 'HOU'))

filter(flights, (carrier== 'UA' | carrier==  'DL' |carrier=='AA' ))

filter(flights, (month== 7 | month==  8 |month== 9 ))

filter(flights, (arr_delay > 120 | dep_delay <= 0 ))

filter(flights, (dep_delay >= 120 & air_time >30 ))

filter(flights, (dep_time >= 2400  | dep_time <=0600 ))
 
#Question 2
##get values in a particular range
filter(flights, between(month, 7,9)) #month 7 to 9

#Question 3
filter(flights, is.na(dep_time))
##Other missing variables dep_delay, arr_time ,  arr_delay
#these are cancelled flights

#5.3.1 Exercises
#Question 1
arrange(flights, is.na(dep_time))

#Question 2
arrange(flights, desc(dep_delay))
arrange(flights,  dep_delay)

#Question 3
arrange(flights,  air_time)

#Question 4
View(arrange(flights,   desc(air_time)))
#longest: Flight 15
View(arrange(flights,   air_time))

#shortest: Flight 4368

#5.4.1 Exercises

#Question 1
select(flights, dep_time, dep_delay, arr_time, arr_delay)
select(flights, dep_time:arr_time)

#Question 2
select(flights, arr_time:arr_time)
#Displays just the selected column

#Question 3
vars <- c("year", "month", "day", "dep_delay", "arr_delay")
flights %>% select(one_of(vars)) 

#Question 4
select(flights, contains("TIME"))
select(flights, time_hour, everything())





