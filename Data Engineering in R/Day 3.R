##
#
df1 <- data.frame(c("ID","Name","%"))
df1 <- data.frame(cbind("ID","Name","%"))
df1 = edit(df1)
names(df1) = c("ID","Name","%")
df1
df2 = data.frame(cbind("ID" = 5))
df2 = data.frame(cbind("ID" = 2,"Status"="Enrolled","Year"=4))
df2 = edit(df2)

#Alternate way
ID = c(1,2,3,4)
Name = c("Ali","Saif","Bader","Ahemd")
Percentage = c(98,85,78,56)

df1 = data.frame("ID"=ID, "Name"= Name, "%"= Percentage)
df1

df2 = data.frame("ID"=c(5,6), 
                 "Name"=c("Alaa","Maha"), 
                 "%"= c(89,74))
df2
#Merging
total = merge(df1, df2, by="ID")
total
##HW: find a way to merge the records without any dupes

#Selecting observations
data()
View(Titanic)
mydata = data.frame(Titanic)
head(mydata)
newdata = mydata[which(mydata$Class=="Crew" & mydata$Sex=="Male"),]
attach(newdata)
View(newdata)

#Subset() function
newdata2 = subset(mydata,mydata$Class=="Crew" & mydata$Sex=="Male",
                  select = c(Class,Survived))
View(newdata2)

#EXC: use an R dataset and perfrom observation selection and subsetting
#Selecting Obs
excdata = data.frame(rock)
head(excdata)

excdata2 = excdata[which(excdata$area > 6900 & excdata$shape < 1),]
attach(excdata2)
View(excdata2)

#Subsetting
excdata3 = subset(excdata,excdata$area > 6000 & excdata$shape > 0.3,
                  select = c(area,shape))
View(excdata3)

#Random Sample
?sample
#sample(x, size, replace = FALSE, prob = NULL):
#n - a positive number, the number of items to choose from
#size = n
#replace	- should sampling be replaced: TRUE/FALSE
mysample <- mydata[sample(1:nrow(mydata), replace = FALSE),]
View(mysample)
mysample2 = mydata[sample(1:nrow(mydata),10, replace = TRUE),]
View(mysample2)

#Using SQL statements to manipulate dataframes
library(sqldf)
newdf = sqldf("SELECT * from Titanic where Age='Adult' ORDER BY Class", rownames = TRUE)

#if-else statments

mark <- 105

if (mark >= 90){
  print("You got: A")
} else if (mark >= 80 ){
  print("You got: B")
} else if (mark >= 70){
  print("You got: C")
} else if (mark >= 60) {
  print("You got: D")
} else if(mark >= 50) {
  print("You got: E")
} else if(mark >100){
  print("Invalid mark.")
} else{
  print("You got: F. You need to reregister in this module again.")
}

#while conditional loop
s = as.integer(readline(prompt = "Enter a number:"))
e = as.integer(readline(prompt = "Enter a number:"))
i = s
sum = 0 

while(i<=e){
  sum = sum+i
  i = i+1
}
print(paste("Sum = ", sum))

##HW:

#for loop
list1 = c(1,2,3,4,5,6,7,8,9,10)
for (i in list1){
  print(i)
}

#nested for loop
mat1 = matrix(1:85, nrow = 5, ncol = 6)

for(row in 1:nrow(mat1)){
  for (col in 1:ncol(mat1)){
    print(paste('The Element at row:', row,' at column:',col,'is',mat1[row,col]))
  }
}

#creating user defined function
add_num = function(num1,num2){
  print(paste(num1+num2))
}
add_num(3,6)

##exc2
find_mean_std = function(numlist){
  print(paste("The mean is =",mean(numlist)))
  print(paste("The STD is =",sd(numlist)))
}


num_of_list = runif(n=30, min=10, max=100)
find_mean_std(num_of_list)

