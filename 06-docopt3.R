# author: Tiffany Timbers
# date: 2020-01-15
# Terminal action: Rscript "06-docopt3.R" data/gapminder-FiveYearData.csv pop
# If working directory is data: Rscript ../06-docopt3.R gapminder-FiveYearData.csv pop

"This script calculates the mean for a specified column
from titanic.csv.

Usage: quick_titanic_col_mean.R <file_path> <var>
" -> doc


library(tidyverse)
library(docopt)

opt <- docopt(doc)

main <- function(file_path, var) {

  # read in data
  data <- read_csv(file_path)

  # print out statistic of variable of interest
  out <- data |>
    pull(!!var) |>
    mean(na.rm = TRUE)
  print(out)
}

main(opt$file_path, opt$var)