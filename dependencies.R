required_packages <- c('data.table', 'dplyr', 'ggplot2', 'bit64')

new.packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]

if (length(new.packages)) {
  install.packages(new.packages)
}

rm(new.packages)

remove.packages("data.table")
install.packages("data.table", type = "source",
                 repos = "https://Rdatatable.gitlab.io/data.table")

data.table::update.dev.pkg()

library(data.table)
library(dplyr)
library(ggplot2)

