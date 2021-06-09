library(tidyverse)
library(learnr)

x <- 7
y <- 24
z <- 16
scores<-c(14,13,12,15,16,14,15,10,8,12)
grades<-(scores/17)*100
new_scores<-c(13,12,11,9,12,13,15,12,6,14)

save(x, y, z, scores, grades, new_scores, file="601-Programming.rdata")
