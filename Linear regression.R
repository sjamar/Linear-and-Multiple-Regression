#load data
library(tidyverse)
library(readxl)
temp_warm_DATA <- read_excel("E:/R/my_trials/temp_warm-DATA.xlsx")
View(temp_warm_DATA)
#scatterplot for latitude and annual temperature
attach(temp_warm_DATA)
plot(Latitude,annual,
     main="Linear regression",
     xlab="Latitude",
     ylab="Annual temperature") #scatterplot
mod <- lm(annual~Latitude)
abline(mod) # adding the linear rgression line
abline(mod,col=2,lwd=3) # adding color and thickness
