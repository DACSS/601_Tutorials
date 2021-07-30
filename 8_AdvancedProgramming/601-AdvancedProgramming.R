setwd("~/Google Drive/Updated Course Syntax Files/328 Working Directory/")

library(tidyverse)

load("gradearnings.RData")
load("anes2016.RData")
load("electric.RData")
electric <- electricity
anes <- anes2016
pseo <- grad

save(pseo, electric, file="~/Google Drive/Updated Course Syntax Files/tutorials/328 Tutorials/3_IntroStats/328Week3.rdata")
setwd("~/Google Drive/Updated Course Syntax Files/tutorials/328 Tutorials/3_IntroStats/")