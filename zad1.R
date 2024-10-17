library(tidyverse)
library(ggthemes)
library(nycflights13)

flights |> 
  group_by(dep_time) |>
  summarise(n=n()) |>
  ggplot(mapping = aes(x = dep_time, y = n)) + geom_smooth(color = "red")

flights |> 
  relocate(year:dep_time, .after = time_hour)
flights |> 
  relocate(starts_with("arr"), .before = dep_time)

