###FUNCTIONS###
##write a function that computes the sum of digits in an integer through user prompt
def sum_digits (i):
    sum = 0
    for i in str(i):
        sum += int(i)
    return sum

i = input("enter three numbers you wish the find the sum of:")

print("the result =", sum_digits(i))

##Write function that returns the area of a regular plyolygon through user's input
import math as m

def area (n,s):
    area = (n*(s**2))/(4*(m.tan(3.14/n)))
    
    return area

n = float(input("Enter the number of sides:"))
s = float(input("Enter the side:"))
print("The area of the polygon is =", area(n,s))

##Write function that returns the count of all vowels in the string (a,e,i,o,u) and their uppercase varients
def countVowels(text):
    i= 0
    count = 0
    
    for i in text:
        if ((i in ['a','e','i','o','u']) or (i in ['A','E','I','O','U'])):
            count = count +1
            
    return count

txt =input("Enter any body of text you want:")
print("the text has",countVowels(txt),"vowel(s)")
