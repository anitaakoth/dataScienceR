library(tidyverse)
library(nycflights13)

flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60
)
transmute(flights,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)
transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100
)

#5.5.2 Exercises

flights_sml2 <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      dep_time,
                      sched_dep_time,
                      air_time)
mutate(flights_sml2,
       dep = dep_time - 2400,
       gain = dep_time - arr_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)

