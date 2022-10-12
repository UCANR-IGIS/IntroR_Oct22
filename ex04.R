#################################################################################
## Exercise 4

## Import a csv

cars_df <- read.csv("./data/stopping_dist_cars.csv")
cars_df

## What are the names of the columns?
names(cars_df)

# How many rows? columns?
nrow(cars_df)
ncol(cars_df)

## Challenge

## What is the mean of the speed column?

## What is the mean reaction distance?

## Compute the frequency table in the surface column

## Pro Tip: you can use summary() on data frames too!

summary(cars_df)


## Exploratory Plots

plot(cars_df$speed, cars_df$breaking_dist)

## Later we will see how to filter rows

## Import another csv

animals_df <- read.csv("https://raw.githubusercontent.com/ucanr-igis/intror_oct22/main/data/animals.csv")

head(animals_df)

mean(animals_df$Height)

mean(animals_df$Weight)

## Why is the mean NA?

View(animals_df)

## NA means 'not available' which is usually synonymous with 'missing'

animals_df$Weight %>% is.na()

animals_df$Weight %>% is.na() %>% table()

## What can we do???
##
## i) Compute the mean without them
## ii) Given them a default value
## iii) Remove those rows from the data frame

## i) Compute the mean without them

## Fortunately, mean() has an optional argument we can use to ignore NAs
## (not all that common)

mean(animals_df$Weight, na.rm = TRUE)


#####################################################################
## Let's create a data frame from scratch with some information about countries:

countries = c("Canada", "Costa Rica", "Mexico", "United States")
populations = c(10, 25, 20, 30)
areas = c(30, 10, 20, 35)

## We can create the data frame with the data.frame() function.
## The equal-length vectors are the arguments.
stats_df = data.frame(country = countries, pop = populations, area = areas)

stats_df

# How many rows? columns?
nrow(stats_df)
ncol(stats_df)

# You can grab a single column with the $
stats_df$pop

stats_df$pop %>% mean()

#####################################################################
## Let's create a data frame from scratch with some information about countries:

countries = c("Canada", "Costa Rica", "Mexico", "United States")
populations = c(10, 25, 20, 30)
areas = c(30, 10, 20, 35)

## We can create the data frame with the data.frame() function.
## The equal-length vectors are the arguments.
stats_df = data.frame(country = countries, pop = populations, area = areas)

stats_df

# How many rows? columns?
nrow(stats_df)
ncol(stats_df)

# You can grab a single column with the $
stats_df$pop

stats_df$pop %>% mean()

