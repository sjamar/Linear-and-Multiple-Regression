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

multiple_regression <- temp_warm_DATA %>% 
  select(annual,Latitude,Longitude)
plot(multiple_regression,main="Multiple linear regression")

multiple_linear_regression <- lm(annual~Latitude+Longitude,data=multiple_regression)
summary(multiple_linear_regression)
