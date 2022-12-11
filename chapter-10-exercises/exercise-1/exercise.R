# Exercise 1: creating data frames
library(tidyverse)
# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)

seahawk_points <- c(0,0,0,0)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season

seahawk_pa <- c(100,100,100,100)

# Combine your two vectors into a dataframe called `games`

games <- data.frame(seahawk_points,seahawk_pa)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!

games <-mutate(games,diff = seahawk_pa - seahawk_points)

# Create a new column "won" which is TRUE if the Seahawks won the game

games <- mutate(games,won = ifelse(seahawk_points>seahawk_pa,TRUE,FALSE))

# Create a vector of the opponent names corresponding to the games played

oppo <- c('Raiders','Broncos','Chargers','Ravens')

# Assign your dataframe rownames of their opponents

games <- data.frame(games,oppo)

# View your data frame to see how it has changed!

