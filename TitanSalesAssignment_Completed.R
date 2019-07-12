setwd("/Users/ayushkumar/Desktop/PGBABI/Titan Insurance Assignment")

getwd()

# Install package to import excel files of "xlsx" format.

install.packages("xlsx")

# Install library to open Excel files.

library(openxlsx)

# rJava is used to create objects, call methods and access fields of Java objects from R.
# Basically it acts as a bridge between R and Java.

install.packages("rJava")

# Read Data from exxcel file.

readData <- read.xlsx("TitanSales.xlsx")

readData

# Dimensions of the dataset.

dim(readData)

attach(readData)

hist(Old_Scheme , col = '#FF6D0099')

hist(New_Scheme , col = '#FF000099')

boxplot(Old_Scheme , horizontal = TRUE , col = '#F4A460' , main = "Boxplot for Old Scheme" , xlab = "Old Scheme")

boxplot(New_Scheme , horizontal = TRUE , col = '#FFE4B5' , main = "Boxplot for New Scheme" , xlab = "New Scheme")

summary(readData)

mean(New_Scheme - Old_Scheme)

sd(Old_Scheme)

sd(New_Scheme)

# Difference of standard deviation between new and old scheme.

sd(New_Scheme - Old_Scheme)

# Function to find Tstat is t.test(x , y , paired = TRUE , alternative = “two.sided”) 
# x,y: numeric vectors
# paired: a logical value specifying that we want to compute a paired t-test
# alternative: the alternative hypothesis. Allowed value is one of “two.sided” (default), “greater” or “less”.

t.test(Old_Scheme , New_Scheme , paired = TRUE , alternative = "less")

# abs function gives the absolute value and qt function gives the critical value at 0.05 probability and 29 degrees of freedom.

abs(qt(0.05 , 29))

# pt function is used to give the probability or p-value when Tstat = -0.24583 and degree of freedom = 29. 

pt(-0.24583, 29, lower = TRUE)












