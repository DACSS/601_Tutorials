# mtcars_analysis
# summary statistics of car weight for low and high hp cars by # of cylinders
# also plots mean weight for high hp cars
# Sean Conway
# Last modified July 2021

# load tidyverse
library(tidyverse)

# summary stats for high hp cars #
# filter out anything with low hp (below 100)
# group by number of cylinders
# Summarize mean, meand, and sd weight
mtcars_high_hp_summary <- mtcars %>% 
  filter(hp > 100) %>% 
  group_by(cyl) %>% 
  summarise(mean_wt=mean(wt), 
            median_wt=median(wt),
            sd_wt=sd(wt))

# Plotting mean weight for high hp cars by number of cylinders
ggplot(mtcars_high_hp_summary,aes(cyl, mean_wt,fill=as.factor(cyl)))+
  geom_bar(stat = 'identity')

# summary stats for low hp cars #
# filter out anything with high hp (above 100)
# group by number of cylinders
# Summarize mean, meand, and sd weight
mtcars_low_hp_summary <- mtcars %>% 
  filter(hp < 100) %>% 
  group_by(cyl) %>% 
  summarise(mean_wt=mean(wt), 
            median_wt=median(wt),
            sd_wt=sd(wt))

# Write high hp summary to file
#write_csv(mtcars_high_hp_summary, 'mtcars_high_hp_summary.csv')
