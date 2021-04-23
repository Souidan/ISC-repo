## load the data
data <- read.csv("census_2020_2000.csv")

## select data in 2020
data_2020 <- subset(data, Year == 2020)
data_2000 <- subset(data, Year == 2000)

## select data based on continent
data_2000_as <- subset(data_2000, Region == "Asia")
data_2020_as <- subset(data_2020, Region == "Asia")

data_2000_am <- subset(data_2000, Region == "Americas")
data_2020_am <- subset(data_2020, Region == "Americas")

data_2000_af <- subset(data_2000, Region == "Africa")
data_2020_af <- subset(data_2020, Region == "Africa")

data_2000_oc <- subset(data_2000, Region == "Oceania")
data_2020_oc <- subset(data_2020, Region == "Oceania")

data_2000_eu <- subset(data_2000, Region == "Europe")
data_2020_eu <- subset(data_2020, Region == "Europe")


col_2000 = rgb(0, 0.5, 1, 0.5)
col_2020 = rgb(1, 0.5, 0, 0.5)

############################################################################################

## histogram of Global Total Fertility Rate 2000, 2020
sum_hist_2000 = hist(
  data_2000$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2000,
  xlab = "Fertility Rate",
  ylab = "Frequency",
  main = "histogram of Total Fertility Rate 2000 vs 2020",
  ylim = c(0, 25)
)
sum_hist_2020 = hist(
  data_2020$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2020,
  add = T
)

legend(
  "topright",
  legend = c("2000", "2020"),
  col = c(col_2020, col_2000),
  pt.cex = 2,
  pch = 15
)

## histogram of Asians Fertility Rate 2000, 2020
as_hist_2000 = hist(
  data_2000_as$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2000,
  xlab = "Fertility Rate",
  ylab = "Frequency",
  main = "histogram of Asians Fertility Rate 2000 vs 2020",
  ylim = c(0, 15)
)
as_hist_2020 = hist(
  data_2020_as$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2020,
  add = T
)

legend(
  "topright",
  legend = c("2000", "2020"),
  col = c(col_2020, col_2000),
  pt.cex = 2,
  pch = 15
)

## histogram of Americans Fertility Rate 2000, 2020
am_hist_2000 = hist(
  data_2000_am$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2000,
  xlab = "Fertility Rate",
  ylab = "Frequency",
  main = "histogram of Americans Fertility Rate 2000 vs 2020",
  ylim = c(0, 15)
)
am_hist_2020 = hist(
  data_2020_am$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2020,
  add = T
)

legend(
  "topright",
  legend = c("2000", "2020"),
  col = c(col_2020, col_2000),
  pt.cex = 2,
  pch = 15
)

## histogram of Africans Fertility Rate 2000, 2020
af_hist_2000 = hist(
  data_2000_af$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2000,
  xlab = "Fertility Rate",
  ylab = "Frequency",
  main = "histogram of Africans Fertility Rate 2000 vs 2020",
  ylim = c(0, 15)
)
af_hist_2020 = hist(
  data_2020_af$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2020,
  add = T
)

legend(
  "topright",
  legend = c("2000", "2020"),
  col = c(col_2020, col_2000),
  pt.cex = 2,
  pch = 15
)

## histogram of Europeans Fertility Rate 2000, 2020
eu_hist_2000 = hist(
  data_2000_eu$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2000,
  xlab = "Fertility Rate",
  ylab = "Frequency",
  main = "histogram of Europeans Fertility Rate 2000 vs 2020",
  ylim = c(0, 15)
)
eu_hist_2020 = hist(
  data_2020_eu$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2020,
  add = T
)

legend(
  "topright",
  legend = c("2000", "2020"),
  col = c(col_2020, col_2000),
  pt.cex = 2,
  pch = 15
)

## histogram of Oceanics Fertility Rate 2000, 2020
oc_hist_2000 = hist(
  data_2000_oc$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2000,
  xlab = "Fertility Rate",
  ylab = "Frequency",
  main = "histogram of Oceanics Fertility Rate 2000 vs 2020",
  ylim = c(0, 15)
)
oc_hist_2020 = hist(
  data_2020_oc$Total.Fertility.Rate,
  breaks = seq(0, 10, 0.1),
  col = col_2020,
  add = T
)

legend(
  "topright",
  legend = c("2000", "2020"),
  col = c(col_2020, col_2000),
  pt.cex = 2,
  pch = 15
)





############################################################################################
## draw the boxplots Life Expectancy at Birth Globally 2000 vs 2020 (for both sexes)

bp_2000_LE = boxplot(formula = data_2000$Life.Expectancy.at.Birth..Both.Sexes ~ data_2000$Region,
               data = data_2000,
               xlab = "Region",
               ylab = "Life Expectancy at Birth (Both Sexes)",
               main = "Life Expectancy at Birth Globally 2000 vs 2020",
               col = col_2000)

bp_2020_LE = boxplot(formula = data_2020$Life.Expectancy.at.Birth..Both.Sexes ~ data_2020$Region,
               data = data_2020,
               xlab = "Region",
               ylab = "Life Expectancy at Birth (Both Sexes)",
               main = "Life Expectancy at Birth from Different Regions",
               col = col_2020,
               add = T)

## put the five num (min, max, 1st, 2nd, and 3rd quantile) on boxplot
text(x = col(bp_m$stats), y = bp_2000_LE$stats, labels = bp_m$stats)
text(x = col(bp_f$stats), y = bp_2020_LE$stats, labels = bp_f$stats)


# Add legend
legend("bottomright",
       legend = c("2000", "2020"),
       col = c(col_2000, col_2020),
       pt.cex = 2,
       pch = 15
)

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result_2000_LE = bp_2000_LE$stats
result_2020_LE = bp_2020_LE$stats

rownames(result_2000_LE) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2000_LE) <- bp_2000_LE$names

rownames(result_2020_LE) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2020_LE) <- bp_2020_LE$names

print(result_2000_LE)
print(result_2020_LE)

############################################################################################

## draw the boxplots Life Expectancy at Birth Globally 2000 vs 2020 (for male)

bp_2000_LE_male = boxplot(formula = data_2000$Life.Expectancy.at.Birth..Males ~ data_2000$Region,
                     data = data_2000,
                     xlab = "Region",
                     ylab = "Life Expectancy at Birth (Males)",
                     main = "Life Expectancy at Birth Globally 2000 vs 2020",
                     col = col_2000)

bp_2020_LE_male = boxplot(formula = data_2020$Life.Expectancy.at.Birth..Males ~ data_2020$Region,
                     data = data_2020,
                     xlab = "Region",
                     ylab = "Life Expectancy at Birth (Males)",
                     main = "Life Expectancy at Birth from Different Regions",
                     col = col_2020,
                     add = T)

## put the five num (min, max, 1st, 2nd, and 3rd quantile) on boxplot
text(x = col(bp_2000_LE_male$stats), y = bp_2000_LE_male$stats, labels = bp_2000_LE_male$stats)
text(x = col(bp_2020_LE_male$stats), y = bp_2020_LE_male$stats, labels = bp_2020_LE_male$stats)


# Add legend
legend("bottomright",
       legend = c("2000", "2020"),
       col = c(col_2000, col_2020),
       pt.cex = 2,
       pch = 15
)

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result_2000_LE_male = bp_2000_LE_male$stats
result_2020_LE_male = bp_2020_LE_male$stats

rownames(result_2000_LE_male) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2000_LE_male) <- bp_2000_LE_male$names

rownames(result_2020_LE_male) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2020_LE_male) <- bp_2020_LE_male$names

print(result_2000_LE_male)
print(result_2020_LE_male)

############################################################################################

## draw the boxplots Life Expectancy at Birth Globally 2000 vs 2020 (for female)

bp_2000_LE_female = boxplot(formula = data_2000$Life.Expectancy.at.Birth..Females ~ data_2000$Region,
                     data = data_2000,
                     xlab = "Region",
                     ylab = "Life Expectancy at Birth (females)",
                     main = "Life Expectancy at Birth Globally 2000 vs 2020",
                     col = col_2000)

bp_2020_LE_female = boxplot(formula = data_2020$Life.Expectancy.at.Birth..Females ~ data_2020$Region,
                     data = data_2020,
                     xlab = "Region",
                     ylab = "Life Expectancy at Birth (females)",
                     main = "Life Expectancy at Birth from Different Regions",
                     col = col_2020,
                     add = T)

## put the five num (min, max, 1st, 2nd, and 3rd quantile) on boxplot
text(x = col(bp_2000_LE_female$stats), y = bp_2000_LE_female$stats, labels = bp_2000_LE_female$stats)
text(x = col(bp_2020_LE_female$stats), y = bp_2020_LE_female$stats, labels = bp_2020_LE_female$stats)


# Add legend
legend("bottomright",
       legend = c("2000", "2020"),
       col = c(col_2000, col_2020),
       pt.cex = 2,
       pch = 15
)

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result_2000_LE_female = bp_2000_LE_female$stats
result_2020_LE_female = bp_2020_LE_female$stats

rownames(result_2000_LE_female) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2000_LE_female) <- bp_2000_LE_female$names

rownames(result_2020_LE_female) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2020_LE_female) <- bp_2020_LE_female$names

print(result_2000_LE_female)
print(result_2020_LE_female)

############################################################################################


## draw the boxplot (Region ~ Fertility Rate)
bp_2000_TFR = boxplot(formula = data_2000$Total.Fertility.Rate ~ data_2000$Region,
             data = data_2000,
             xlab = "Region",
             ylab = "Fertility Rate",
             main = "Fertility Rate from Different Regions 2000 vs 2020",
             col = col_2000)

## put the fivenum (min, max, 1st, 2nd, and 3rd quartile) on boxplot
text(x = col(bp_2000_TFR$stats), y = bp_2000_TFR$stats, labels = bp_2000_TFR$stats)


## draw the boxplot (Region ~ Fertility Rate)
bp_2020_TFR = boxplot(formula = data_2020$Total.Fertility.Rate ~ data_2020$Region,
             data = data_2020,
             col = col_2020,
             add = T)

## put the fivenum (min, max, 1st, 2nd, and 3rd quartile) on boxplot
text(x = col(bp_2020_TFR$stats), y = bp_2020_TFR$stats, labels = bp_2020_TFR$stats)

# Add legend
legend("bottomright",
       legend = c("2000", "2020"),
       col = c(col_2000, col_2020),
       pt.cex = 2,
       pch = 15
)

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result_2000_TFR = bp_2000_TFR$stats
rownames(result_2000_TFR) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2000_TFR) <- bp_2000_TFR$names
print(result_2000_TFR)


## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result_2020_TFR = bp_2020_TFR$stats
rownames(result_2020_TFR) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_2020_TFR) <- bp_2020_TFR$names
print(result_2020_TFR)











