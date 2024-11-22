library(tidyverse)
library(ggthemes)
library(nycflights13)

v1 = sample(c(1, NA), size = 1000, replace = TRUE, prob = c(0.7,0.3))
v2 = sample(c(1, NA), size = 1000, replace = TRUE, prob = c(0.7,0.3))

n <- 15
funk <- function(n){
  if ((n %% 5 == 0) && (n %% 3 ==0)){print("fizzbudd")}
  else if ((n %% 5 == 0) && (n %% 3 != 0)){print("fizz")}
  else if ((n %% 5 != 0) && (n %% 3 == 0)){print("bud")}
  else{print(n)}
}




start <- Sys.time()
indexx <- function(v1,v2){
  bul <- which(is.na(v1) & is.na(v2))
  return(bul) 
}
end <- Sys.time()
res <- indexx(v1,v2)
extime <- end - start
#print(res)
#print
funk(n)
