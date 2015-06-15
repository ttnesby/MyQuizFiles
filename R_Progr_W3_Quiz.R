library(datasets)
data(iris)

head(mtcars) # from promise to data set

## Question 1 - what is the mean of 'Sepal.Length' for the species virginica?

mean(iris[iris$Species == "virginica", "Sepal.Length"])

## Question 2
## what R code returns a vector of the means of the variables 
## 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

colMeans(iris[, 1:4])

apply(iris[, 1:4], 2, mean)


colMeans(iris)       # error
apply(iris, 2, mean) # error
apply(iris, 1, mean) # just NA and a lot of warnings

## Question 3
## How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
library(datasets)
data(mtcars)
?mtcars

head(mtcars) # from promise to data set

t <- split(mtcars, mtcars$cyl)
t[[4]][,1]

sapply(split(mtcars, mtcars$cyl), function(data){mean(data[,"mpg"])})

tapply(mtcars$cyl, mtcars$mpg, mean)        # something else

t2 <- split(mtcars$mpg, mtcars$cyl)

sapply(split(mtcars$mpg, mtcars$cyl), mean) # ok

sapply(mtcars, cyl, mean) # error
apply(mtcars, 2, mean) # mean of columns in mtcars


## Question 4

## what is the absolute difference between the 
## average horsepower of 4-cylinder cars and the 
## average horsepower of 8-cylinder cars?

t3 <- sapply(split(mtcars, mtcars$cyl), function(data){mean(data[,"hp"])})
abs(t3[1] - t3[3])

## Question 5

debug(ls)
ls()
ls()
