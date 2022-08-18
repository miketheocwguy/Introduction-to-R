library(ggplot2)
library(tidyverse)
library(dplyr)
movies <- read.csv("~/Downloads/Project-Data.csv", stringsAsFactors = T)


names(movies)[18] <- 'GrossUS'
names(movies)[8] <- 'Budget'

movie2 <- movies %>% filter(
  Genre %in% c('drama', 'action','animation','crime','adventure')
)

movie3 <- movie2 %>% filter(
  Studio %in% c('Buena Vista Studios','WB','Paramount Pictures','Universal','Fox','Sony') 
  )

u <- ggplot(data = movie3, aes(x = Genre, y = GrossUS, color = Studio, size = Budget))


# graph .....data comes out weird i might have made a mistake extracting out the data
graph <- u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5) + ggtitle('Domestic Gross % by Genre') + theme(plot.title = element_text(hjust = 0.5)) + ylab("Gross % US")

print(graph)

