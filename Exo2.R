#Question 1
data("iris")

#Question 2
install.packages("tidyverse")
library(tidyverse)
iris$Species<-str_to_upper(iris$Species)

#Question 3
func <- function(x) {
  if (x=='SETOSA') 1 else 2
}
iris$new<-lapply(iris$Species, FUN = func)

#Question 4
irisP=subset(iris, Species == "SETOSA")