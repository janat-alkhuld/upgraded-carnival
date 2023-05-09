###Day 2 - Chapter 2: Programming w/ Numbers and Strings###
#How to import the bult in libraries
from math import *

#Arithmatic and problem solving

#Turning Mathematic equations into code keeping PEDMAS in mind
a=2
b=3
r=4
n=5
t=6

case1= b* 1**n + r**n/100**n #use of ** operator
case2= b*((1 + r/100)**n)

print("Case 1= ",case1)
print("Case 2= ",case2)

eq1 = math.sqrt(a**2+b**2 - 2*a*b*math.cos(t)) #using py imported libraries to use their specified functions
eq2 = math.sqrt((a**2+b**2) - 2*(a*b*math.cos(t)))
print(eq1)
print(eq2)

bz= 1729
omr = bz//1000 #The use of // Operator
bz= bz%1000 #The Use of % operator
print("I have",omr,"OR and",bz,"Baisas")

p = 4.35
qty =100
tot = p*qty

print("The total is=",tot,"rounded to=",round(tot)) #using py imported libraries to use their specified functions
print(round(434.9999,4))
print("the total w/ 2 decimal points=",format(tot,"2f")) #using py imported libraries to use their specified functions
