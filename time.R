library(readr)
library(dplyr)
library(stringr)

titles <- read_csv('data/titles.csv')
stats <-read.csv('data/stats.csv')

books <- full_join(titles, stats)

dickens <- filter(books, str_detect(author, 'Dickens'))
