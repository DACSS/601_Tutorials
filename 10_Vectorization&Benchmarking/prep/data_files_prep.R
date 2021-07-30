library(tidyverse)
library(microbenchmark)

sampling <- function(seed){
  set.seed(seed)
  df <- tibble::tibble(
    var1=runif(100),
    var2=runif(100,min=10,max=20),
    var3=replicate(100,sample(c('a','b','c','d'),size=1)),
    var4=rnorm(100, 70,5),
    var5=replicate(100,sample(c('red','blue','orange','yellow'),size=1))
  )
  return(df)
}
dfs <- lapply(1:20, sampling)
lapply(1:length(dfs), function(i){
  write_csv(dfs[[i]],file=paste0(here::here('9_Vectorization&Benchmarking/prep/files/'),i,'.csv'))
})

# bad practice, but just making things easier for now
setwd(here::here('9_Vectorization&Benchmarking/prep/files'))
files <- list.files()
data <- vector('list',length(files))
for(i in 1:length(files)){
  data[[i]]<-read_csv(files[[i]])
}
data1 <- lapply(files, read_csv)
result <- microbenchmark(
  'loop'=for(i in 1:length(files)){
    data[[i]]<-read_csv(files[[i]])
  },
  'lapply'=data1 <- lapply(files, read_csv),
  times = 25,
  unit='s'
)
result


