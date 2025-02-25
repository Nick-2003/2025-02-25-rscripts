# author: Tiffany Timbers
# date: 2020-01-15
#
# This script calculates the mean horsepower of the cars from the built-in
# R data frame `mtcars` and saves it to `results/mean_hp_col.csv`.
# This script takes no arguments.
#
# Usage: Rscript print_mean_hp.R

library(readr)

main <- function() { # Could add parameters within function()
  mean_hp <- mean(mtcars$hp)
  mean_hp <- data.frame(value = mean_hp)
  write_csv(mean_hp, "results/mean_hp_col.csv") # From readr
  # writes into .csv file a 1-row 1-column .csv file
  # Allows file that people can easily access; want more generic functions
}

main()