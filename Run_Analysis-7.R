# Load Data
library(ggplot2)
data(mtcars)
head(mtcars, n=3)
dim(mtcars)
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- factor(mtcars$am)
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)
attach(mtcars)

# T-test transmission type and MPG
testResults <- t.test(mpg ~ am)
testResults$p.value
testResults$estimate

# Regrssion analysis
fullModelFit <- lm(mpg ~ ., data = mtcars)
summary(fullModelFit) 
summary(fullModelFit)$coeff 


# Backward selection
stepFit <- step(fullModelFit)
summary(stepFit)
summary(stepFit)$coeff 


# Residuals & Diagnostics
sum((abs(dfbetas(stepFit)))>1)


