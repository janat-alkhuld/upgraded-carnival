###LIST OPERATIONS###
##define a list of integers containing the first five prime numbers
prime = [2,3,5,7,11]
print("the following list contains the first five prime numbers:",prime)

##Write for loops that iterate over the elements of a list without the use of the range function for the following tasks:
import numpy as np
myList = [22,3,-2,-1,10,1]

count = 0
for element in myList:
    #a. Printing all elements of a list in a single row, separated by spaces.
    print (element, end=" ")
    print()
    #b. Computing the product of all elements in a list.
    product = np.prod(myList)
    print("The product of the list elements is =", product)
    #c. Counting how many elements in a list are negative.
    if myList[i] <0 :
        count = count +1
print ("The number of negative numbers:",count)