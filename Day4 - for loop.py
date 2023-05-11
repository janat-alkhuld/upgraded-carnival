'''convert while-loop program into for-loop porgram:
total =0.0
count =0
inputStr = input("Enter value:")
while inputStr !="":
    value = float (inputStr)
    total = total + value
    count += 1
    inputStr = input("Enter value:")
if count <0
    avg = total / count
else:
    avg :0.0
'''
inputStr = int(input("Enter the number of values you want to find the average of:"))
total = 0
beginning = 1
end = inputStr

for inputStr in range (beginning, end +1) :
    newNum = int(input(("Enter desired value for average calculation:")))
    total = total + newNum
if inputStr > 0:
    avg = total / inputStr
    print("Average Value=",avg)
else:
    avg = 0
    print("Average Value=",avg)


###NESTED LOOP###
##Nested for-loop
for i in range (3): #number of rows
    for j in range (4): #number of columns
        print("[]", end="")
    print()

##Write a program that can decipher the following message, key = khoor for the word hello

msg = "|rx#duh#juhdwh"
ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"



for i in range (len(msg)+1):
    conv2Num = ord(msg[i])
    conv2Char = conv2Num -3
    print("The encrypted message is",chr(conv2Char))

##Write a program that can print perfect numbers 1-100

start = 1
end = 100
 
for n in range(start, end+1):
    sum = 0

    for i in range(1, n):
        if n%i == 0:
            sum += i
    

    if n == sum:
        print(n)


