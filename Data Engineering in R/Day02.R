# Day 1 Data Engineering
 
# Day 2 Data Engineering
# Data Input/Output ----
# For Importing data file you may use Import Dataset from File Menue
library(xlsx) # Does not work because of a Java Runtime
# Alternative to xlsx library rio
install.packages("rio")
library(rio)
# export(data_frame,"name.xlsx")
export(mtcars, "mtcars1.csv")
export(mtcars, "mtcars1.xlsx")
# export to sheets of an Excel workbook
export(list(mtcars = mtcars, iris = iris), "multi.xlsx")
#______________________________________________________________

#________________________________________________
# Creating Matrices----
# Prices
(goog <- c(450,451,452,445,468))
(msft <- c(230,231,'a',236,228)) 
class(msft)
# notice the impact of changing one value to character
# change it back to numeric
# Put vectors into matrix
stocks <- c(goog,msft)
stock.matrix <- matrix(stocks,byrow=TRUE,nrow=2)
# Name matrix
days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('GOOG','MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
# Display
stock.matrix
# Adding New rows/columns contain properties of rows/column----
colSums(stock.matrix)
stock.matrix = rbind(stock.matrix,c(1:5))
stock.matrix=rbind(stock.matrix,colSums(stock.matrix))
# Exercise: Create a matrix of 5 student scores in three subjects ----
# Create student scores by using functions, 
# make sure the numbers you get are integer without decimal points
#       Math    Phys    Bio   Total   Percent
# Ali
ali=rnorm(3,45,4)
# Badar
badar=rnorm(3,66,3)
# Saif
saif=rnorm(3,80,9)
# studmatrix
studmatrix = rbind(ali,badar,saif)
studmatrix
# Total
studmatrix=cbind(studmatrix,rowSums(studmatrix))
studmatrix=cbind(studmatrix,'Percent'=(studmatrix[,4]/300))

#
# Save the result in an excel file
#
#__________________________________________________________
# factor ----
temps <- c('cold','med','cold','med','hot','hot','cold')
days1 <- c('SA','SU','MO','TU','WE','TH','FR')
fact.temp <- factor(temps,ordered=TRUE,levels=c('cold','med','hot'))
temps.df <- data.frame(days1,temps,fact.temp)
summary(temps)
summary(fact.temp)
summary(temps.df)
#___________________________________________________________
# Missing Values ----
# Detecting Missing Values
any(is.na(df))
# delete rows contain missing values
df <- df[!is.na(df$col), ]
# replace NAs with something else
df[is.na(df)] <- 0 # works on whole df
#
# Merging Data Frames----
total <- merge(dataframeA, dataframeB, by="ID")
# Try to find other ways
#
# Selecting Observations----
newdata <- leadership[which(gender=='M' & age > 30),]

# The subset() function
newdata <- subset(leadership, age >= 35 | age < 24, select=c(q1, q2, q3, q4))

newdata <- subset(leadership, gender=="M" & age > 25, select=gender:q4)

#Random Samples
mysample <- leadership[sample(1:nrow(leadership), 3, replace=FALSE),]
#
# Using SQL statement to Manipulate data frame----
library(sqldf)
newdf <- sqldf("select * from mtcars where carb=1 order by mpg",row.names=TRUE)
#

