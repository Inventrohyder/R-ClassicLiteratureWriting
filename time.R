library(readr)
library(dplyr)

titles <- read_csv('data/titles.csv')
stats <-read.csv('data/stats.csv')

books <- full_join(titles, stats)
