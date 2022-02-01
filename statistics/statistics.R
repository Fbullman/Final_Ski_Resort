#Add library
library(dplyr)

#import csv
weather <- read.csv('weather_cleaned.csv',stringsAsFactors = FALSE)

str(weather)

#calculate correlation matrix
used_matrix <- as.matrix(weather[,c("visit","Average.Snow.Depth","Average.High.Temp","Average.Low.Temp","Average.Temp")])
cor(used_matrix)

#linear regression for snow depth
lm(visit ~ Average.Snow.Depth, weather)

#summarize linear regression for snow depth
summary(lm(visit ~ Average.Snow.Depth, weather))

#linear regression for average temp
lm(visit ~ Average.Temp, weather)

#summarize linear regression for average temp
summary(lm(visit ~ Average.Temp, weather))

#import csv
reviews <- read.csv('reviews_cleaned.csv',stringsAsFactors = FALSE)

str(reviews)

#calculate correlation matrix
review_matrix <- as.matrix(reviews[,c("rating","Average.Snow.Depth","Average.High.Temp","Average.Low.Temp","Average.Temp")])
cor(review_matrix)

temps <- read.csv('temps.csv',stringsAsFactors = FALSE)
str(temps)

#correlation of temp only
cor(temps$visit,temps$Average.Temp)

#linear regression for average temp
lm(visit ~ Average.Temp, temps)

#summarize linear regression for average temp
summary(lm(visit ~ Average.Temp, temps))

