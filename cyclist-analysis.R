#Load Packages
library(tidyverse)
library(lubridate)
library(data.table)


#upload the multiple files by creating a vector, concatenating the directory -
#& applying an element name to easily locate the file source
files <- list.files(path = "data/", pattern = ".csv")
files <- str_c("data/", files)

names(files) <- c("Jan-File", "Feb-File", "Mar-File", "Apr-File", "May-File", "Jun-File", "Jul-File", "Aug-File", "Sep-File", "Oct-File", "Nov-File", "Dec-File")

original_data <- map_df(.x = files, .f = read_csv, .id = "data_source")
View(original_data)

#cleaning the data -> , adding new columns and sperating the days, months, years for better aggregation
modified_data <- original_data %>%
  mutate(ride_length = as.numeric(difftime(ended_at, started_at, units = "mins"))) %>%
  mutate(day_of_week = weekdays(started_at)) %>%
  mutate(month = month(started_at)) %>%
  mutate(year = year(started_at)) %>%
  mutate(member_casual = recode(member_casual,"Subscriber" = "member","Customer" = "casual"))

#removing bad data
#removing all NA values and only considering rides with length greater than 0
remodified_data <- modified_data %>%
  filter(!is.na(start_station_name)) %>%
  filter(!is.na(end_station_name)) %>%
  filter(ride_length > 0)

View(remodified_data)

# Descriptive analysis - this step isnt needed but for verification
summary(remodified_data$ride_length)

#comparison of members and causal users
aggregate(remodified_data$ride_length, list(remodified_data$member_casual), FUN = mean)
aggregate(remodified_data$ride_length, list(remodified_data$member_casual), FUN = median)
aggregate(remodified_data$ride_length, list(remodified_data$member_casual), FUN = max)
aggregate(remodified_data$ride_length, list(remodified_data$member_casual), FUN = min)

# See the average ride time by each day for members vs casual users
aggregate(remodified_data$ride_length, list(remodified_data$member_casual, remodified_data$day_of_week), FUN = mean)

#Analysis
#Analyzing rider data by type and weekday

analysis_table <- remodified_data %>%
  group_by(member_casual, day_of_week) %>%
  summarise(number_of_rides = n(), avg_duration = mean(ride_length)) 

write.csv(analysis_table, "cyclist-data.csv", row.names = F)
write.csv(remodified_data, "cyclist-bike-data.csv", row.names = F)
