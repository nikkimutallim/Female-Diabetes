library(dplyr)
library(tidyr)
library(tidyverse)
diabetes<-read.csv(file.choose())
attach(diabetes)
View(diabetes)
multireg <- lm(DiabetesPedigreeFunction ~ Pregnancies + Glucose +BloodPressure + SkinThickness +
                 Insulin + BMI + Age)
summary(multireg)
par(mfrow=c(2,2))
plot(multireg)

#heteroscedasticity
library(lmtest)
bptest(multireg)

#multiCollinearity
library(car)
vif(multireg)
sqrt(vif(multireg))> 2




