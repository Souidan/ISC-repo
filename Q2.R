## load the data
data <- read.csv("census_2020_2000.csv")

## select data in 2020
data_2020 <- subset(data, Year == 2020)

## select data based on continent
data_2020_as <- subset(data_2020, Region == "Asia")
data_2020_am <- subset(data_2020, Region == "Americas")
data_2020_af <- subset(data_2020, Region == "Africa")
data_2020_oc <- subset(data_2020, Region == "Oceania")
data_2020_eu <- subset(data_2020, Region == "Europe")

############################


## plot FTR ~ LE in Africa
plot(x = data_2020_af$Total.Fertility.Rate,
     y = data_2020_af$Life.Expectancy.at.Birth..Both.Sexes,
     main = "Fertility Rate v.s. Life Expectancy",
     xlab = "Fertility Rate",
     ylab = "Life Expectancy",
     pch = 16,
     col = "red"
)

## plot FTR ~ LE in Asia
points(x = data_2020_as$Total.Fertility.Rate, 
       y = data_2020_as$Life.Expectancy.at.Birth..Both.Sexes, 
       pch = 16,
       col="blue")

## plot FTR ~ LE in Americas
points(x = data_2020_am$Total.Fertility.Rate, 
       y = data_2020_am$Life.Expectancy.at.Birth..Both.Sexes, 
       pch = 16,
       col="yellow")

## plot FTR ~ LE in Europe
points(x = data_2020_eu$Total.Fertility.Rate, 
       y = data_2020_eu$Life.Expectancy.at.Birth..Both.Sexes, 
       pch = 16,
       col="green")

## plot FTR ~ LE in Oceania
points(x = data_2020_oc$Total.Fertility.Rate, 
       y = data_2020_oc$Life.Expectancy.at.Birth..Both.Sexes, 
       pch = 16,
       col="pink")


# Add legend
legend("topright",
       pch = 1,
       col = c("red", "yellow", "blue", "green", "pink"),
       legend = bp$names
)

# draw the regression line between TFR and LE
lm.model1 <- lm(data_2020$Life.Expectancy.at.Birth..Both.Sexes~data_2020$Total.Fertility.Rate, data_2020)
abline(lm.model1, lwd=2)

############################

## plot FTR ~ LE males in Africa
plot(x = data_2020_af$Total.Fertility.Rate,
     y = data_2020_af$Life.Expectancy.at.Birth..Males,
     main = "Fertility Rate v.s. Life Expectancy Males",
     xlab = "Fertility Rate",
     ylab = "Life Expectancy Males",
     pch = 16,
     col = "red"
)

## plot FTR ~ LE males in Asia
points(x = data_2020_as$Total.Fertility.Rate, 
       y = data_2020_as$Life.Expectancy.at.Birth..Males,
       pch = 16,
       col="blue")

## plot FTR ~ LE males in Americas
points(x = data_2020_am$Total.Fertility.Rate, 
       y = data_2020_am$Life.Expectancy.at.Birth..Males,
       pch = 16,
       col="yellow")

## plot FTR ~ LE males in Europe
points(x = data_2020_eu$Total.Fertility.Rate, 
       y = data_2020_eu$Life.Expectancy.at.Birth..Males,
       pch = 16,
       col="green")

## plot FTR ~ LE males in Oceania
points(x = data_2020_oc$Total.Fertility.Rate, 
       y = data_2020_oc$Life.Expectancy.at.Birth..Males,
       pch = 16,
       col="pink")


# Add legend
legend("topright",
       pch = 1,
       col = c("red", "yellow", "blue", "green", "pink"),
       legend = bp$names
)

# draw the regression line between TFR and LE
lm.model2 <- lm(data_2020$Life.Expectancy.at.Birth..Males~data_2020$Total.Fertility.Rate, data_2020)
abline(lm.model2, lwd=2)


############################

## plot FTR ~ LE females in Africa
plot(x = data_2020_af$Total.Fertility.Rate,
     y = data_2020_af$Life.Expectancy.at.Birth..Females,
     main = "Fertility Rate v.s. Life Expectancy",
     xlab = "Fertility Rate",
     ylab = "Life Expectancy",
     pch = 16,
     col = "red"
)

## plot FTR ~ LE females in Asia
points(x = data_2020_as$Total.Fertility.Rate, 
       y = data_2020_as$Life.Expectancy.at.Birth..Females,
       pch = 16,
       col="blue")

## plot FTR ~ LE females in Americas
points(x = data_2020_am$Total.Fertility.Rate, 
       y = data_2020_am$Life.Expectancy.at.Birth..Females,
       pch = 16,
       col="yellow")

## plot FTR ~ LE females in Europe
points(x = data_2020_eu$Total.Fertility.Rate, 
       y = data_2020_eu$Life.Expectancy.at.Birth..Females,
       pch = 16,
       col="green")

## plot FTR ~ LE females in Oceania
points(x = data_2020_oc$Total.Fertility.Rate, 
       y = data_2020_oc$Life.Expectancy.at.Birth..Females,
       pch = 16,
       col="pink")


# Add legend
legend("topright",
       pch = 1,
       col = c("red", "yellow", "blue", "green", "pink"),
       legend = bp$names
)

# draw the regression line between TFR and LE
lm.model3 <- lm(data_2020$Life.Expectancy.at.Birth..Both.Sexes~data_2020$Total.Fertility.Rate, data_2020)
abline(lm.model3, lwd=2)

