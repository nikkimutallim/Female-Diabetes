library(dplyr)
library(tidyr)
library(tidyverse)
diabetes<-read.csv(file.choose())
attach(diabetes)
View(diabetes)

#Replacing Missing Values with the Mean

diabetes$Glucose[diabetes$Glucose == 0] <- mean(diabetes$Glucose)
diabetes$BloodPressure[diabetes$BloodPressure == 0] <- mean(diabetes$BloodPressure)
diabetes$SkinThickness[diabetes$SkinThickness == 0] <- mean(diabetes$SkinThickness)
diabetes$Insulin[diabetes$Insulin == 0] <- mean(diabetes$Insulin)
diabetes$BMI[diabetes$BMI == 0] <- mean(diabetes$BMI)
summary(diabetes)

View(diabetes)

ggplot(data = diabetes, 
       aes(x = Outcome)) +
  geom_bar(fill = 'blue', width = 0.2) + 
  xlab("Outcome") +
  ylab("Count") +
  ggtitle("# of Non-Diabetic(0) and Diabetic(1) people")


ggplot(data = diabetes, 
       aes(x = Outcome, y = Age)) +
  geom_bar(stat='identity', fill = 'blue', width = 0.2) + 
  xlab("Outcome") +
  ylab("Age") +
  ggtitle("Avg Age of Non-Diabetic(0) and Diabetic(1) people")


#Age vs Bloodpressure
ggplot(data = diabetes, 
       aes(x = Age, y = BMI, group = Age)) +
  geom_boxplot(fill = 'red') + 
  xlab("Age") +
  ylab("BMI") +
  ggtitle("Age vs BMI")

#Number of Pregnancies vs BMI
ggplot(data = diabetes, 
       aes(x = Pregnancies, y = BMI, group = Pregnancies)) +
  geom_boxplot(fill = 'blue') + 
  xlab("# of Pregnancies") +
  ylab("BMI") +
  ggtitle("Number of Pregnancies vs BMI")

#Number of Pregnancies by Age
ggplot(data = diabetes, 
       aes(x = Pregnancies, y = Age, group = Pregnancies)) +
  geom_boxplot(fill = 'red') + 
  xlab("# of Pregnancies") +
  ylab("Age") +
  ggtitle("Number of Pregnancies by Age")



