library(tidyverse)
data <- read.csv("census_2020_2000.csv")
## select data in 2020
data_2020 <- subset(data, Year == 2020)
#remove FIPS & GENC


## select data based on continent
data_2020_as <- subset(data_2020, Region == "Asia")
data_2020_am <- subset(data_2020, Region == "Americas")
data_2020_af <- subset(data_2020, Region == "Africa")
data_2020_oc <- subset(data_2020, Region == "Oceania")
data_2020_eu <- subset(data_2020, Region == "Europe")

ggplot(data_2020_as, aes(x = FIPS, y = Total.Fertility.Rate)) +
  geom_point()+  facet_wrap(~Subregion, scale="free") +theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(data_2020_am, aes(x = FIPS, y = Total.Fertility.Rate)) +
  geom_point()+  facet_wrap(~Subregion, scale="free") +theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(data_2020_af, aes(x = FIPS, y = Total.Fertility.Rate)) +
  geom_point()+  facet_wrap(~Subregion, scale="free") +theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(data_2020_oc, aes(x = FIPS, y = Total.Fertility.Rate)) +
  geom_point()+  facet_wrap(~Subregion, scale="free") +theme(axis.text.x = element_text(angle = 90, hjust = 1))


ggplot(data_2020_eu, aes(x = FIPS, y = Total.Fertility.Rate)) +
  geom_point()+  facet_wrap(~Subregion, scale="free") +theme(axis.text.x = element_text(angle = 90, hjust = 1))


##check if homogenous data
ggplot(data_2020_as, aes(x=Subregion,y=Total.Fertility.Rate ,fill=Subregion)) +
  geom_boxplot() 


ggplot(data_2020_am, aes(x=Subregion,y=Total.Fertility.Rate,fill=Subregion)) +
  geom_boxplot() 

ggplot(data_2020_af, aes(x=Subregion,y=Total.Fertility.Rate,fill=Subregion)) +
  geom_boxplot() 

ggplot(data_2020_oc, aes(x=Subregion,y=Total.Fertility.Rate,fill=Subregion)) +
  geom_boxplot() 

ggplot(data_2020_eu, aes(x=Subregion,y=Total.Fertility.Rate,fill=Subregion)) +
  geom_boxplot() 




ggplot(data_2020, aes(x=Region,y=Total.Fertility.Rate,fill=Region)) +
  geom_boxplot() 




