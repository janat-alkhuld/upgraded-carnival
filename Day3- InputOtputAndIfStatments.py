###
## The rule is that if the year is divisible by 100 and not divisible by 400, leap year is skipped.##

#find out if the year enetered is a leap year
year = int(input("Enter desired year for calcuations:\t"))

isLeap = year%100
notLeap = year%400

print (isLeap , notLeap)

if (year % 400 == 0) and (year % 100 == 0):
    print(year,"is  a Leap Year!")
elif (year % 4 == 0) and (year % 100 == 0):
    print(year,"is  a Leap Year!")
else:
    print(year,"is not a Leap Year")
     

##Write a program to check if a certain number of files with similar sizes can be saved into athe memory of a determined size
file_Amount = int(input("Enter the amount of files you wish to save:\t")) #Enter the Number of Files
memo = int(input("Enter the memory size available:\t")) #Enter the size of the memeory
file_Size = int(input("Enter size of the files you wish to save:\t")) #Enter the size a single file
TOTAL_FILE_SIZE = file_Amount * file_Size #Calculate the ttal size of all files 

#Check if the total file size is less than or equal to the memeory size to commit the files to memory otherwise do not commit
if TOTAL_FILE_SIZE <= memo :
    print("Your file(s) have been successfully committed to the memory.")
else :
    print("There is NOT enough space to save your file to the memory!")
    
    
##Write a program to check the middle character of a work if if it was even or odd
wrd = input("Enter your word:\t")
ltr = int(len(wrd))
mid = int(ltr/2)
even_Indx = mid -1
odd_Indx = mid

print("Your word", wrd,"contains", ltr, "letters")

if mid%2 == 0 :
    print("The middle characters are:",wrd[even_Indx],wrd[(even_Indx+1)])
else :
    print("The middle character is:",wrd[odd_Indx])


##Write a program to convert F to C and vice versa
Temp = float(input("Enter Temp Please:"))
Deg = input("Enter which temp system you wish to convert to [F/C]\t")

f = ((Temp * 1.8) + 32)
c = ((Temp - 32) * 1.8)


if Deg == "F":
    print(Temp,"C Degrees in Fehernheit is",f, "F")
else:
    print(Temp,"F Degrees in Celcius is",c, "C")