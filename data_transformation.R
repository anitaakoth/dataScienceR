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

NA ^ 0





