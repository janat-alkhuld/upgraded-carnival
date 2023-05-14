###PROCESSING STRINGS, RANDOM NUMBERS AND SIMULATIONS###

string=input("Enter phone in the format (XXX)XXX-XXXX:")
valid = len(string) == 13 #conditional statement = TRUE
position = 0

while valid and position < len(string) :
    if position == 0:
        valid = string[position] == "(" #conditional statement = TRUE
    elif position == 4 :
        valid = string[position] == ")" #conditional statement = TRUE
    elif position == 8 :
        valid = string[position] == "-" #conditional statement = TRUE
    else:
        valid = string[position].isdigit() 
        
    position = position + 1

if valid :
    print("The string contains a valid phone number.")
else:
    print("The string does not contain a valid phone number.")

##Write a pyhon program where the user enter a password and check if the password is valid or not(8 char or more, contains lower case, contains upper case,
#contains a number, and contains at least one special case
##Write a pyhon program where the user enter a pssword and check if the password is valid or not(8 char or more, contains lower case, contains upper case,
#contains a number, and contains at least one special case

password = input ("Enter a password with 8 char or more, contains lower case, contains upper case, contains a number, and contains at least one special case:")
num = 0
lower = 0
upper = 0
spec = 0

if len(password) >= 8 :
    for pos in password:
        
        if (pos.islower()):
            lower =lower + 1
        if (pos.isupper()):
            upper = upper +1
        if (pos.isdigit()):
            num = num + 1
        if (pos in '@#$_'):
            spec = spec +1

if (num >=1 and lower >=1  and upper >=1 and spec >=1 and num + lower + upper + spec == len(password)):
    print(password, " is a valid password")
else:
    print(password, "is NOT a valid password")
    

##The use of replace() and remove()
txt = "345-567"

print(txt.replace("-",""))
print(txt.remove("-"))

##The use of random()
import random as r

print (r.random())
print (r.random() *100)
print (round(r.random()*100 , 3))

##write a program for a guess number game 1-100

from random import randint

guess = randint(1,100)

while guess >= 1 and guess <=100:
    
    user_guess = int(input("Enter a number between 1 and 100:"))
    
    if user_guess == guess:
        print("Congratulations! You got it right!")
        break
    elif user_guess > guess:
        print("go lower...")
    else:
        print("Go Higher!")
    


##generate numbers from 1-10, skip 5 and exit loop at 6
import random as r

i = r.randint(1,10)

for i in range (r.randint(1,10)):
   print("number is" , i)
   if i == 5:
    print ("We skip number 5")
    continue
    if i == 6:
        ("Leaving the loop")
        break
print ("You have left the loop")
        