# Project 1 Descriptive analysis of demographic data
1. Describe the frequency distributions of the variables. Consider also the differences between the sexes.

2. Are there bivariate correlations between the variables?

3. Are the values of the individual variables comparatively homogeneous within subregions and heterogeneous between different subregions? To answer this question, first compare the variability of the values in the individual subregions and then compare the values between different subregions.

4. How have the values of the variables changed over the last 20 years, i.e. comparing 2000 with 2020?

For tasks 1–3, consider only the year 2020. This project serves to practice the use of explorative and descriptive methods. Therefore, use both appropriate statistical measures and graphical methods for the analysis in all parts of the project.


## Some results

### Question 1

Histogram global TFR

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/03c6826e01f75451bc38329a822f1e2bf5b4e23d/hist_TFR_gl.png)

Histogram TFR in Asia

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/03c6826e01f75451bc38329a822f1e2bf5b4e23d/hist_TFR_as.png)

Histogram TFR in America

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/03c6826e01f75451bc38329a822f1e2bf5b4e23d/hist_TFR_am.png)

Histogram TFR in Africa

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/03c6826e01f75451bc38329a822f1e2bf5b4e23d/hist_TFR_af.png)

Histogram TFR in Europe

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/03c6826e01f75451bc38329a822f1e2bf5b4e23d/hist_TFR_eu.png)

Histogram TFR in Oceania

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/a835d9a3faba84fdf0b531a60f83a72a6197fde6/hist_TFR_oc.png)

Boxplot (Region ~ Fertility Rate)

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/1ea9ea6f64066924b2e72c37e51ba944e60dde27/Boxplot%20Region%20~%20Fertility%20Rate.png)

Boxplot (Region ~ Life Expectancy(Both Sexes))

![alt text](https://github.com/Jeffchen00/ISC-repo/blob/18fe860d94d45d24981c726b8187153e4b266384/Boxplot%20Region%20~%20Life%20Expectancy(Both%20Sexes).png)

Histogram global life expectancy males vs females

![global life expectancy males vs females](https://user-images.githubusercontent.com/31046966/115420964-de195f00-a1fb-11eb-826c-b9c16971862e.png)

Histogram Asian life expectancy males vs females

![asian life expectancy males vs females](https://user-images.githubusercontent.com/31046966/115421114-fc7f5a80-a1fb-11eb-913b-45d7aaa1ddbe.png)

Histogram African life expectancy males vs females

![african life expectancy males vs females](https://user-images.githubusercontent.com/31046966/115421182-0a34e000-a1fc-11eb-8aa2-b1583fb37f06.png)

Histogram European life expectancy males vs females

![european life expectancy males vs females](https://user-images.githubusercontent.com/31046966/115421263-1620a200-a1fc-11eb-9dff-a0f7dd666884.png)

Histogram Oceanic life expectancy males vs females

![Oceanic life expectancy males vs females](https://user-images.githubusercontent.com/31046966/115421299-1e78dd00-a1fc-11eb-9025-d8d17f5b9d9b.png)

Histogram American life expectancy males vs females

![hist_am_LE](https://user-images.githubusercontent.com/31046966/115423762-626ce180-a1fe-11eb-8160-ff722cbe3c4a.png)

Boxplot (Region ~ Life Expectancy)

![Boxplot Region ~ LE male & female](https://github.com/Jeffchen00/ISC-repo/blob/ac7bbad752db500e88a92ff7529ed12c83e516d5/result_Q1/Boxplot%20Region%20~%20LE%20male%20&%20female.png)



### Question 2

Linear model between life expectancy and TFR

![lm_TFR_LE](https://github.com/Jeffchen00/ISC-repo/blob/fbea636c926e2c87361dae9b922693f5fc41d1e1/result_Q2/lm_TFR_LE.png)

Linear model between life expectancy males and TFR

![lm_TFR_LE_MALE](https://user-images.githubusercontent.com/31046966/115736861-eaccbd00-a38b-11eb-9068-99d97bf16b93.png)


Linear model between life expectancy females and TFR

![lm_TFR_LE_FEMALE](https://user-images.githubusercontent.com/31046966/115752813-c3312100-a39a-11eb-8e8c-da4d3fab032c.png)




### Question 3



#### We at first diplay the scatter plots for each continent in order to display individual country's Total Fertility Rate variances subgrouped(faceted by subregion)

A Scatter Plot to show each Asian country's Total Fertility Rate faceted by SubRegion.

![Scatter_Plot_Asia](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/Asian_Scatters_Subregion.png)

A Scatter Plot to show each African country's Total Fertility Rate faceted by SubRegion.

![Scatter_Plot_Africa](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/Africa_Scatters_Subregion.png)


A Scatter Plot to show each EU country's Total Fertility Rate faceted by SubRegion.

![Scatter_Plot_EU](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/EU_Scatters_Subregion.png)

A Scatter Plot to show each Oceania country's Total Fertility Rate faceted by SubRegion.

![Scatter_Plot_Oceania](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/Ocenia_Scatters_Subregion.png)


A Scatter Plot to show each America country's Total Fertility Rate faceted by SubRegion.

![Scatter_Plot_America](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/American_Scatters_Subregion.png)


#### We secondly diplay the box plots for each continent in order to display  Total Fertility Rate variances across the subregions per continent

A Box Plot to show Total Fertility Rate per SubRegion in Asia.

![Box_Plot_Asia](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/Asian_Boxes_Subregion.png)

A Box Plot to show Total Fertility Rate per SubRegion in Africa.

![Box_Plot_Africa](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/African_Boxes_Subregion.png)


A Box Plot to show Total Fertility Rate per SubRegion in the EU.

![Box_Plot_EU](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/EU_Boxes_Subregion.png)

A Box Plot to show Total Fertility Rate per SubRegion in Oceania.

![Box_Plot_Oceania](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/Ocenia_Boxes_Subregion.png)


A Box Plot to show Total Fertility Rate per SubRegion in America.

![Box_Plot_America](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/American_Boxes_Subregion.png)


#### Finally we display a box plot for the whole world' Total Fertility Rate per region

A Box Plot to show Total Fertility Rate  in the world.

![Box_Plot_World](https://github.com/Souidan/ISC-repo/blob/Project-1/result_Q3/World_Boxes_Region.png)




### Question 4

histogram TFR 2000 vs 2020

![hist_TFR_00to20](https://user-images.githubusercontent.com/31046966/115751349-697c2700-a399-11eb-9a99-c5a69cb73362.png)

histogram FR Asia 2000 vs 2020

![hist_as_FR_00to20](https://user-images.githubusercontent.com/31046966/115832911-bb619300-a413-11eb-8128-db4c4e0a859f.png)


histogram FR America 2000 vs 2020

![hist_am_FR_00to20](https://user-images.githubusercontent.com/31046966/115751855-dbed0700-a399-11eb-9abc-264c7043f6b3.png)

histogram FR Africa 2000 vs 2020

![hist_af_FR_00to20](https://user-images.githubusercontent.com/31046966/115751873-dee7f780-a399-11eb-8d3b-b004cc153487.png)

histogram FR Europe 2000 vs 2020

![hist_eu_FR_00to20](https://user-images.githubusercontent.com/31046966/115751899-e3acab80-a399-11eb-8e12-9d2296e13957.png)

histogram FR Oceania 2000 vs 2020

![hist_oc_FR_00to20](https://user-images.githubusercontent.com/31046966/115751916-e8715f80-a399-11eb-9c38-a138c506cb83.png)



Bloxplot TFR globally 2000 vs 2020

![boxplot_FR_00to20](https://user-images.githubusercontent.com/31046966/115752205-2d959180-a39a-11eb-88b4-df18c4a38e12.png)


Bloxplot LE globally 2000 vs 2020

![boxplot_LE_00to20](https://user-images.githubusercontent.com/31046966/115752009-fd4df300-a399-11eb-917f-5b35743e6960.png)

Bloxplot LE male 2000 vs 2020

![boxplot_LE_male_00to20](https://user-images.githubusercontent.com/31046966/115754484-8534fc80-a39c-11eb-8662-541780bd6819.png)


Bloxplot LE female 2000 vs 2020

![boxplot_LE_female_00to20](https://user-images.githubusercontent.com/31046966/115754506-89f9b080-a39c-11eb-8903-2a093d746994.png)








