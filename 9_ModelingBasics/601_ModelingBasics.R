setwd("~/Google Drive File Stream/My Drive/Updated Course Syntax Files/328 Working Directory/")

library(tidyverse)

load("gradearnings.RData")
load("anes2016.RData")
load("electric.RData")
load("easystats.RData")
anes <- anes2016
pseo <- grad
anes<-anes%>%
  mutate(party = case_when(
    v162030 == 1 ~ "Democratic",
    v162030 == 2 ~ "Republican"
  )) %>%
  mutate(business = v162100) %>%
  mutate(liberals = v162097) %>%
  mutate(rich = v162105) %>%
  mutate(china = case_when(
    v162159 == 1 ~ "Major threat",
    v162159 == 2 ~ "Minor threat",
    v162159 == 3 ~ "Not a threat"
  )) %>%
  mutate(hcare = case_when(
    v162193 == 1 ~ "Increase",
    v162193 == 2 ~ "Decrease"
  )) 

save(pseo, anes, cars, chicks, faithful, sleep, infert, file="~/Google Drive File Stream/My Drive/Updated Course Syntax Files/tutorials/328 Tutorials/7_BivariateStats/328Week7.rdata")
setwd("~/Google Drive File Stream/My Drive/Updated Course Syntax Files/tutorials/328 Tutorials/7_BivariateStats/")

setwd("~/R Working Directory/")

