library(readr)
library(dplyr)
library(stringr)

titles <- read_csv('data/titles.csv')
stats <-read.csv('data/stats.csv')

books <- full_join(titles, stats)

dickens <- filter(books, str_detect(author, 'Dickens'))
dickens_stats <- dickens %>% select(id, words, sentences, to_be_verbs, contractions, pauses, cliches, similes
)
