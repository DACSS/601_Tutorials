setwd("~/Google Drive File Stream/My Drive/Updated Course Syntax Files/328 Working Directory/")

library(tidyverse)

load("gradearnings.RData")
load("anes2016.RData")
load("electric.RData")
electric <- electricity
anes <- anes2016
pseo <- grad
anes<-anes%>%
  mutate(Econ_Mobility = case_when(
    v162136x == 1 ~ "Much Easier",
    v162136x == 2 ~ "Moderately Easier",
    v162136x == 3 ~ "Slightly Easier",
    v162136x == 4 ~ "The Same",
    v162136x == 5 ~ "Slightly Harder",
    v162136x == 6 ~ "Moderately Harder",
    v162136x == 7 ~ "Much Harder"
  )) %>%
  mutate(Vote_16 = case_when(
    v162034a == 1 ~ "Clinton",
    v162034a == 2 ~ "Trump",
    v162034a == 3 ~ "Johnson",
    v162034a == 4 ~ "Stein"
  )) %>%
  mutate(Class = case_when(
    v162132 == 1 ~ "Lower Class",
    v162132 == 2 ~ "Working Class",
    v162132 == 3 ~ "Middle Class",
    v162132 == 4 ~ "Upper Class"
  ))

save(pseo, anes, electric, file="~/Google Drive File Stream/My Drive/Updated Course Syntax Files/tutorials/328 Tutorials/6_IntroPlotting/328Week6.rdata")
setwd("~/Google Drive File Stream/My Drive/Updated Course Syntax Files/tutorials/328 Tutorials/6_IntroPlotting/")

setwd("~/R Working Directory/")
