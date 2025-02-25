# author: Tiffany Timbers
# date: 2020-01-15
# Terminal action: Rscript 05-docopt2.R age
# Terminal action: Rscript 05-docopt2.R fare

"This script calculates the mean for a specified column
from titanic.csv.

Usage: 05_docopt2.R <var>
" -> doc


library(tidyverse)
library(docopt)

opt <- docopt(doc)

main <- function(var) {

  # read in data
  data <- read_csv('data/titanic.csv')

  # print out statistic of variable of interest
  out <- data |>
    pull(!!var) |> # !! or {{}} to enforce entry of string input
    mean(na.rm = TRUE)
  print(out)
}

main(opt$var)