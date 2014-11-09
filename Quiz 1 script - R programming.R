setwd("C:/Users/Jodie/R Programming, Coursera")
data <- read.csv("hw1_data.csv")

x <- 4
class(x)

x <- c(4, "a", TRUE)
class(x)

x <- c(1, 3, 5)
y <- c(3, 2, 10)
cbind(x, y)

x <- list(2, "a", "b", TRUE)
x[[1]]

x <- 1:4
y <- 2
x + y

# Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all 
# elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
x

data[1:2, ]

attributes(data)

data[152:153, ]

data[47, 1]

missing <- is.na(data$Ozone)
table(missing)
ozoneNoNa <- data$Ozone[!missing]
summary(ozoneNoNa)

sapply(data$Ozone, mean, na.rm=TRUE)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values 
# are above 90. What is the mean of Solar.R in this subset?

subset <- data[data$Ozone > 31 & data$Temp > 90, ]
complete.cases(subset$Solar.R)
sapply(subset, mean, na.rm=TRUE)

# What is the mean of "Temp" when "Month" is equal to 6?

sapply(data[data$Month == 6, ], mean, na.rm=T)

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
sapply(data[data$Month == 5, ], max, na.rm=T)




