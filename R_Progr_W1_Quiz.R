# Question 4
x <- 4L
class(x)

# Question 5
x <- c(4, "a", TRUE)
class(x)

# Question 6
x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x, y)

# Question 8
x <- list(2, "a", "b", TRUE)
class(x[[1]])

# Question 9
x <- 1:4
y <- 2:3
z <- x + y
class(z)

# Question 10
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x >= 11] <- 4

# Preparing for Q11-Q20
quizCSV <- "./Dropbox/Coursera/R Programming/Week1/QuizData/hw1_data.csv"
data <- read.csv(quizCSV)

# Question 11
colnames(data)

# Question 12
data[1:2,]

# Question 13
nrow(data)
dim(data)

# Question 14
data[152:153, ]

# Question 15
data[47, ]
data[47, "Ozone"]

# Question 16
length(data$Ozone[is.na(data$Ozone)])

# Question 17
mean(data$Ozone[!is.na(data$Ozone)])
mean(data$Ozone[complete.cases(data$Ozone)])
mean(data$Ozone)
mean(data$Ozone, na.rm = TRUE)


# Question 18
subsetSolar.R <- data[data$Ozone > 31 & data$Temp > 90, "Solar.R"]
mean(subsetSolar.R[complete.cases(subsetSolar.R)])

mean(data[data$Ozone > 31 & data$Temp > 90, "Solar.R"], na.rm = TRUE)

# Question 19
mean(data[data$Month == 6, "Temp"], na.rm = TRUE)

# Question 20
max(data[data$Month == 5, "Ozone"], na.rm = TRUE)
