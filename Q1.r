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

##############################################

## histogram of Global Total Fertility Rate
sum_hist=hist(x = data_2020$Total.Fertility.Rate,
     main = "Histogram of Global Total Fertility Rate",
     xlab = "Fertility Rate",
     ylab = "Frequency",
     breaks = seq(0, 8, 0.1),
)


## histogram of Total Fertility Rate in Asia
as_hist=hist(x = data_2020_as$Total.Fertility.Rate,
     main = "Histogram of Total Fertility Rate in Asia",
     xlab = "Fertility Rate",
     ylab = "Frequency",
     breaks = seq(0, 8, 0.1),
     ylim = c(0, 15))

## histogram of Total Fertility Rate in America
am_hist=hist(x = data_2020_am$Total.Fertility.Rate,
     main = "Histogram of Total Fertility Rate in America",
     xlab = "Fertility Rate",
     ylab = "Frequency",
     breaks = seq(0, 8, 0.1),
     ylim = c(0, 15))

## histogram of Total Fertility Rate in Africa
af_hist=hist(x = data_2020_af$Total.Fertility.Rate,
     main = "Histogram of Total Fertility Rate in Africa",
     xlab = "Fertility Rate",
     ylab = "Frequency",
     breaks = seq(0, 8, 0.1),
     ylim = c(0, 15))

## histogram of Total Fertility Rate in Europe
eu_hist=hist(x = data_2020_eu$Total.Fertility.Rate,
     main = "Histogram of Total Fertility Rate in Europe",
     xlab = "Fertility Rate",
     ylab = "Frequency",
     breaks = seq(0, 8, 0.1),
     ylim = c(0, 15))

## histogram of Total Fertility Rate in Oceania
oc_hist=hist(x = data_2020_oc$Total.Fertility.Rate,
     main = "Histogram of Total Fertility Rate in Oceania",
     xlab = "Fertility Rate",
     ylab = "Frequency",
     breaks = seq(0, 8, 0.1),
     ylim = c(0, 15))


##############################################


## histogram of Life Expectancy for both Sexes in one graph

male_le_hist = hist(
        data_2020$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = rgb(0, 0, 1, 0.5),
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of global life expectancy"
)
female_le_hist = hist(
        data_2020$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = rgb(1, 0, 0, 0.5),
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(rgb(1, 0, 0, 0.5),
                rgb(0, 0, 1, 0.5)),
        pt.cex = 2,
        pch = 15
)

## histogram of Total Fertility Rate in Asia
as_hist=hist(x = data_2020_as$Total.Fertility.Rate,
             main = "Histogram of Total Fertility Rate in Asia",
             xlab = "Fertility Rate",
             ylab = "Frequency",
             breaks = seq(0, 8, 0.1),
             ylim = c(0, 15))

## histogram of Total Fertility Rate in America
am_hist=hist(x = data_2020_am$Total.Fertility.Rate,
             main = "Histogram of Total Fertility Rate in America",
             xlab = "Fertility Rate",
             ylab = "Frequency",
             breaks = seq(0, 8, 0.1),
             ylim = c(0, 15))

## histogram of Total Fertility Rate in Africa
af_hist=hist(x = data_2020_af$Total.Fertility.Rate,
             main = "Histogram of Total Fertility Rate in Africa",
             xlab = "Fertility Rate",
             ylab = "Frequency",
             breaks = seq(0, 8, 0.1),
             ylim = c(0, 15))

## histogram of Total Fertility Rate in Europe
eu_hist=hist(x = data_2020_eu$Total.Fertility.Rate,
             main = "Histogram of Total Fertility Rate in Europe",
             xlab = "Fertility Rate",
             ylab = "Frequency",
             breaks = seq(0, 8, 0.1),
             ylim = c(0, 15))

## histogram of Total Fertility Rate in Oceania
oc_hist=hist(x = data_2020_oc$Total.Fertility.Rate,
             main = "Histogram of Total Fertility Rate in Oceania",
             xlab = "Fertility Rate",
             ylab = "Frequency",
             breaks = seq(0, 8, 0.1),
             ylim = c(0, 15))


##############################################

## draw the boxplot (Region ~ Fertility Rate)
bp = boxplot(formula = data_2020$Total.Fertility.Rate ~ data_2020$Region,
             data = data_2020,
             xlab = "Region",
             ylab = "Fertility Rate",
             main = "Fertility Rate from Different Regions")

## put the fivenum (min, max, 1st, 2nd, and 3rd quartile) on boxplot
text(x = col(bp$stats), y = bp$stats, labels = bp$stats)

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result = bp$stats
rownames(result) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result) <- bp$names
print(result)

##############################################

## draw the boxplot (Region ~ Life Expectancy(Both Sexes))
bp = boxplot(formula = data_2020$Life.Expectancy.at.Birth..Both.Sexes ~ data_2020$Region,
             data = data_2020,
             xlab = "Region",
             ylab = "Life Expectancy at Birth (Both Sexes)",
             main = "Life Expectancy at Birth from Different Regions")

## put the fivenum (min, max, 1st, 2nd, and 3rd quartile) on boxplot
text(x = col(bp$stats), y = bp$stats, labels = bp$stats)

# Prepare a vector of colors with specific color for male and female


## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result = bp$stats
rownames(result) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result) <- bp$names
print(result)

############################

