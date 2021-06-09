setwd("~/Google Drive/Updated Course Syntax Files/328 Working Directory/")

library(tidyverse)

load("mbta.RData")
load("gradearnings.RData")
load("anes2016.RData")
load("electric.RData")
electric <- electricity
anes <- anes2016
pseo <- grad
Degree <- select(pseo, deglevl)

save(mbta, pseo, anes, electric, Degree, file="~/Google Drive/Updated Course Syntax Files/tutorials/328 Tutorials/2_DescribingData/328Week2.rdata")
setwd("~/Google Drive/Updated Course Syntax Files/tutorials/328 Tutorials/2_DescribingData/")
