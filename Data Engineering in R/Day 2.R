###Day2 - Cont.Dataframes
#Adding a char datatype to a vector with numeric values, make the entire vector a char datatype
rannum1 = c(1,26,"c",24,68)
rannum1
#To counteract the char value in the vectors, as.numeric(varaiable_name) is used
#The char datatype is removed an replaced with a null value
rannum1 = as.numeric(rannum1)
rannum1

#To add a new row - use rbind(), to add a new column - cbind()
rannum1 = rbind(rannum1, c(1:5))
rannum1

rannum1 = rbind(rannum1, colSums(rannum1))
rannum1
##cbind adds a column (use rowsums()), rbind adds a row (use colsums())

#Create a matrix with the following headers, make sure the numbers are integers
Ali = rnorm(3,45,4)
Bader = rnorm(3,96,3)
Saif = rnorm(3,80,9)

std_matrix1 = rbind(Ali,Bader,Saif)
std_matrix1

#Adding the total
std_matrix1 = cbind(std_matrix1,rowSums(std_matrix1))
std_matrix1
#Adding Percentage
std_matrix1 = cbind(std_matrix1,"%" = std_matrix1[,4]/300)
std_matrix1
#Exporting it as CSV file
std_df = data.frame(std_matrix1)
colnames(std_df) =  c('Math','Phys','Bio','Total','%')
write.csv(x=std_df, file="Student_Marks.csv")

#Editing the dataframe using edit() - if you anna save the changes it must be assigned to the dataframe created:
#std_df - edit(std_df)
edit(std_df)

##HW: can we enter values in the console?


##Graphs
df = mtcars #Built in dataset
str(df) #shows the strcure and datatype of the dataframe
summary(df) #shows the description sumary of the dataframe
#Histogram
hist(df$mpg, col = "light blue",main = "Cars")
?hist

#Visualisation using ggplot
#import ggplot2
library(ggplot2)
varnorm = as.integer(rnorm(200,4,3))
varunif = as.integer(runif(200,1,7))
count = rnorm(200,10,5)
dfrand = data.frame(varnorm,varunif,count)

ggplot(data = dfrand, aes(varnorm)) +geom_histogram()

#Customising qplot
qplot(data = dfrand, x= varnorm, geom= 'histogram', xlim= c(0,15), color = "red")

#ggplot (data aesthetics)
p1 = ggplot(dfrand, aes(x=varnorm))

#Add histogram geometry
p1 + geom_histogram()

#adding colours
p1 + geom_histogram( binwidth =1, color = "light green", fill = "light blue")

#adding labels
p1 = ggplot(dfrand, aes(x=varnorm)
p1 + geom_histogram( binwidth =1, color = "light green", fill = "light blue") + xlab("Normal Distribution") + ylab("Occurance") + ggtitle ("Histogram of Normal Distribution") 
            
            
#Change transperncy (alpha)
p1 = ggplot(dfrand, aes(x=varnorm)
p1 + geom_histogram( binwidth =1, color = "light green", fill = "light blue", alpha = 0.5) + xlab("Normal Distribution") + ylab("Occurance") + ggtitle ("Histogram of Normal Distribution") 
                        
#line types
p1 = ggplot(dfrand, aes(x=varnorm)
p1 + geom_histogram( binwidth =1, color = "light green", fill = "light blue", alpha = 0.5, linetype = "twodash") + xlab("Normal Distribution") + ylab("Occurance") + ggtitle ("Histogram of Normal Distribution")

##########################
df=mtcars
str(df)
summary(df)

hist(df$mpg, col="red", main="Code Academe")
?hist

#---------------------------------------------------
library(ggplot2)
varnorm=as.integer(rnorm(200,4,3))
varunif=as.integer(runif(200,1,7))
Count =rnorm(200,10,5)
df=data.frame(varnorm, varunif,Count)
hist(varnorm)

ggplot(data=df, aes(varnorm))+geom_histogram()
qplot(data=df, x=varnorm, geom='histogram', xlim=c(0,15), color='red',fill=I('green'))

qplot(varnorm, data=df, geom='histogram', alpha=0.2)

pl <- ggplot(df,aes(x=varnorm))
pl + geom_histogram()
pl + geom_histogram(binwidth = 1, color="red", fill="pink")

pl <- ggplot(df, aes(x=varnorm))
pl +geom_histogram (binwidth = 1, color="red", fill="pink") + xlab('Normal Distrbution')+
  ylab('Occurences') + ggtitle('Histogram of Normal Distribution')

pl <- ggplot(df, aes(x=varnorm))
pl +geom_histogram (binwidth = 0.5, aes(fill=factor(varnorm)))+xlab('Normal Distrbution')+ ylab('Occurences') + ggtitle('Histogram of Normal Distribution')

varnorm=as.integer(rnorm(200,4,3))
varunif=as.integer(runif(200,1,7))
Count =rnorm(200,10,5)
df=data.frame(varnorm, varunif,Count)

##scatter plot
library('ggplot2')
df <- mtcars
qplot(wt, mpg, data = df)

#adding colours
qplot(wt, mpg, data = df, color = cyl)

#changing the size
qplot(wt, mpg, data = df, color = cyl, size = cyl)
qplot(wt, mpg, data = df, color = hp, size = cyl, alpha = 0.4)

#
p1 <- ggplot(data = df, aes(x = wt, y = mpg))
p1 + geom_point()

#
p1 <- ggplot(data = df, aes(x = wt, y = mpg))
p1 + geom_point(aes(shape = factor(cyl), color = factor(cyl)), size = 4, alpha = 0.6
                
##Exc1:

##Bar plot


##Boxplot# Libraries
library(tidyverse)
library(hrbrthemes)
library(viridis)

# create a dataset
data <- data.frame(
  name=c( rep("A",500), rep("B",500), rep("B",500), rep("C",20), rep('D', 100)  ),
  value=c( rnorm(500, 10, 5), rnorm(500, 13, 1), rnorm(500, 18, 1), rnorm(20, 25, 4), rnorm(100, 12, 1) )
)

# Plot 1
data %>%
  ggplot( aes(x=name, y=value, fill=name)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("A boxplot with jitter 1") +
  xlab("")

# Plot 2
data %>%
  ggplot( aes(x=name, y=value, fill=name)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("A boxplot with jitter 2") +
  xlab("")

##HW:Interactive plot with observation/interpertation + 3D graph + animated graph from (https://r-graph-gallery.com/288-animated-barplot-transition.html)
#Interactive

#3D 

#Animated


