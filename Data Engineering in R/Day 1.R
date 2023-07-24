#Day 1 - Vectors, Matricies, and Dataframes (Data structures)
a= c(0.5,0.6)
class(a)
b = c(TRUE, FALSE)
class(b)
c = c (T,F)
class(c)
d = c("a","b","c")
class(d)
e = 9.29
class(e)

#
temps = c(72,71,68,73,69,75,71)
class(temps)
length((temps))
names(temps)=  c("Mon","Tue","Wed","Thu","Fri","Sat","Sun") #names() sets a name for each value
#Five num summary
fivenum(temps)
mean(temps)
min(temps)
max(temps)
median(temps)

#indexing and slicing
temps[3:6] #index in R starts from 1, alternitavely temps[c(3:6)] to display elements from index 3 to index 6
temps[c(3,6)]#slicing

#square of temps
temps**2

#add 10 to temps
temps + 10

#Multiply by 4
temps * 4

#Comparison Operators and logical operators
#show temps higher than 60
temps[temps>60]
#show temps higher than 75 or lower than 80
temps[(temps <75) & (temps >40)]
#show temps higher than 70
temps70 = temps[(temps>69) & (temps<80)]
temps70
#show temps less than 70
temps_below_70 =temps[(temps<70) | (temps>79)]
temps_below_70
#show average temps from weekends and weekdays
temps_weekend = c(temps['Sat'], temps['Fri'])
temps_weekend
temps_weekday = temps [!names(temps) %in% c('Sat','Fri')]
temps_weekday
#Removing elements (Wed)
#temps[-3]
#alternative:
temp_Wed = temps[temps = 'Wed'] 
temps[!names(temps) %in% c('Wed')]

###EXC:1###
#Solve the problesm using R:
##What is to to the power of five
2^5
##Create a vector called stock.prices w/ the following data points: 23,27,23,21,34
stock_prices = c(23,27,23,21,34)
##Assign names to the price relating to days of the week
names(stock_prices) = c('Sun','Mon','Tue','Wed','Thu')
stock_prices
##What is the avergae (mean) for the stocks for the week
mean_stock = mean(stock_prices)
mean_stock
##Create a vector called Over23 consising of elements where the stock price is higher than 23
over23 = stock_prices>23
over23
##Use built in function to find the day with the highest stock price
max_stock = stock_prices[stock_prices == max(stock_prices)]
max_stock
max(names(stock_prices)) #or names(stock_price[stock_prices == max(stock_prices)])
##Use over23 vector to filter out the stock_prices and only return the day and prices where the price is over 23
over23 = stock_prices[(stock_prices>23)]
over23
###FIN###

##HW: generate a random list of numbers (using ruinif() and rnorm()) 30 numbers each and then plot the list
#rnorm generates a random value from the normal distribution. runif generates a random value from the uniform.
random_values1 = rnorm(n=30, mean=10, sd=2)
random_values1
#create vector of 30 random values from uniform distribution
random_values2 = runif(n=100, min=5, max=25)
random_values2
#To make it integers use as.integer, if you want the same numbers to appear with radomly generated numbers; use set.seed
as.integer(random_values1)
as.integer(random_values2)


#Matrices
y_col = matrix (1:20, nrow = 5, ncol = 4, byrow = FALSE) #use matrix func, specify the range of data you want in the matrix
y_col
y_row = matrix (1:20, nrow = 5, ncol = 4, byrow = TRUE)
y_row
cells = c(1,26,24,68)
rnames = c("R1","R2")
cnames = c("C1","C2")
matrix2 = matrix(cells, nrow=2, ncol=2,byrow = TRUE, dimnames = list(rnames,cnames))
matrix2

#multiply a 2x3 matrix by 3x2 matrix and vice versa
mymatrix1 = matrix (1:3, nrow = 2, ncol = 3, byrow = FALSE)
mymatrix2 = matrix (1:2, nrow = 3, ncol = 2, byrow = FALSE)
mymatrix1 %*% mymatrix2 #produces a 2x2 matrix
mymatrix2%*%mymatrix1 #produces a 3x3 matrix

#Matrix Subscripts
#display the elements in the first col, 2nd row
y_col[2,1]
#display the element is the third col
y_col[,3]
#display the elements in row 2
y_col[2,]
#display the elements in the 4th row from cols 1,2
y_col[4,c(1,2)]

#Data input and output with R
#importing dataset from kaggle
library(readr)
backloggd_games <- read_csv("E:/Data Engineering Py/backloggd_games.csv")
View(backloggd_games)

my_matrix = matrix(1:9, nrow = 3, ncol = 3)
mydf = data.frame(my_matrix)
View(mydf)

#to export into an excel file, use library(rio)* 
library(rio)
install.packages(rio)

export(df,"output.csv")
#*Refuses to be installed