library(tidyverse)
data <- read.csv("./census_2020_2000.csv")

## select data in 2020
data_2020 <- subset(data, Year == 2020)
theme_set(theme_gray())


upper.panel<-function(x, y){
  points(x,y, pch=19, col=c("grey"))
  r <- round(cor(x, y), digits=2)
  txt <- paste0("R = ", r)
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  text(0.5, 0.9, txt)
}
pairs(data_2020[7:10], lower.panel = NULL, 
      upper.panel = upper.panel)
