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

# Prepare a vector of colors with specific color for male and female
col_m = rgb(0, 0, 1, 0.5)
col_f = rgb(1, 0, 0, 0.5)

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


## histogram of global Life Expectancy for both Sexes in one graph
male_le_hist = hist(
        data_2020$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = col_m,
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of global life expectancy",
        ylim = c(0, 25)
)
female_le_hist = hist(
        data_2020$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = col_f,
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(col_f, col_m),
        pt.cex = 2,
        pch = 15
)

## histogram of Life Expectancy Asian males and females
as_male_le_hist = hist(
        data_2020_as$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = col_m,
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of Asian life expectancy",
        ylim = c(0, 15)
)
as_female_le_hist = hist(
        data_2020_as$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = col_f,
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(col_f, col_m),
        pt.cex = 2,
        pch = 15
)

## histogram of Life Expectancy Africa males and females
af_male_le_hist = hist(
        data_2020_af$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = col_m,
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of African life expectancy",
        ylim = c(0, 15)
)
af_female_le_hist = hist(
        data_2020_af$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = col_f,
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(col_f, col_m),
        pt.cex = 2,
        pch = 15
)

## histogram of Life Expectancy Europe males and females
eu_male_le_hist = hist(
        data_2020_eu$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = col_m,
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of European life expectancy",
        ylim = c(0, 15)
)
eu_female_le_hist = hist(
        data_2020_eu$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = col_f,
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(col_f, col_m),
        pt.cex = 2,
        pch = 15
)

## histogram of Life Expectancy Oceanic males and females
oc_male_le_hist = hist(
        data_2020_oc$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = col_m,
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of Oceanic life expectancy",
        ylim = c(0, 15)
)
oc_female_le_hist = hist(
        data_2020_oc$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = col_f,
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(col_f,
                col_m),
        pt.cex = 2,
        pch = 15
)

## histogram of Life Expectancy American males and females

am_male_le_hist = hist(
        data_2020_am$Life.Expectancy.at.Birth..Males,
        breaks = seq(40, 100, 1),
        col = col_m,
        xlab = "life expectancy",
        ylab = "Frequency",
        main = "histogram of American life expectancy",
        ylim = c(0, 15)
)
am_female_le_hist = hist(
        data_2020_am$Life.Expectancy.at.Birth..Females,
        breaks = seq(40, 100, 1),
        col = col_f,
        add = T
)

# Add legend
legend(
        "topright",
        legend = c("Females", "Males"),
        col = c(col_f, col_m),
        pt.cex = 2,
        pch = 15
)

##############################################

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

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result = bp$stats
rownames(result) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result) <- bp$names
print(result)

############################

## draw the boxplot (Sex ~ Life Expectancy)
bp_m = boxplot(formula = data_2020$Life.Expectancy.at.Birth..Males ~ data_2020$Region,
                data = data_2020,
                xlab = "Region",
                ylab = "Life Expectancy at Birth (Both Sexes)",
                main = "Life Expectancy at Birth from Different Regions",
                col = col_m)

bp_f = boxplot(formula = data_2020$Life.Expectancy.at.Birth..Females ~ data_2020$Region,
                data = data_2020,
                xlab = "Region",
                ylab = "Life Expectancy at Birth (Both Sexes)",
                main = "Life Expectancy at Birth from Different Regions",
                col = col_f,
                add = T)

## put the fivenum (min, max, 1st, 2nd, and 3rd quartile) on boxplot
text(x = col(bp_m$stats), y = bp_m$stats, labels = bp_m$stats)
text(x = col(bp_f$stats), y = bp_f$stats, labels = bp_f$stats)


# Add legend
legend("bottomright",
       legend = c("Females", "Males"),
       col = c(col_f, col_m),
       pt.cex = 2,
       pch = 15
)

## print the fivenum (min, max, 1st, 2nd, and 3rd quartile)
result_m = bp_m$stats
result_f = bp_f$stats
rownames(result_m) <- c("min", "1Q", "2Q", "3Q", "max")
rownames(result_f) <- c("min", "1Q", "2Q", "3Q", "max")
colnames(result_m) <- bp_m$names
colnames(result_f) <- bp_f$names
print(result_m)
print(result_f)

