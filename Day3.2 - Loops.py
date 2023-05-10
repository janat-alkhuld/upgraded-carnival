##Write a program that prints the first 10 even numbers while loop
num1=0 #Setting the first number as 0
c=0 # Counter start from 0 to print 10 numbers while neglecting the 0

while num1%2 == 0 and c<=10: ## While loop that runs until
    print ("The Even number is:",num1)
    num1= num1+2
    c +=1
    
##Write a program that prints the first 10 numbers and their squares
numsqr=1 #Setting the first number as 1
c=10 # Counter start from 1 to print 10 numbers

while numsqr <= c: #prints and performs the squaring from 1-10
    print ("The Squared number is", numsqr**2)
    numsqr +=1
    
##Write a program that prints the following sequence (105, 98, 91...7)
Seq=105 #Setting the first number as 0
c=0 # Counter start from 0 to print 10 numbers while neglecting the 0

print ("The Sequence is:")

while Seq >= 7: ## While loop that runs until 7 is printed
    print (Seq)
    Seq= Seq-7 #Increases by the sequence pattern
    
##Write a program that reads text and produces the text back in ASCII

text_Body = input(print("Enter the body of text you wish to convert to UNICODE value: \n")) #User input of body of text
st_indx = 0 #starting index of any string
fin_indx = len(text_Body) -1 #ending index of a string would be its length minus one

print ("The UNICODE for the text you entered is: ")
while st_indx <= fin_indx : #Parameters indicate that the loop will go on until the ending index
    print(ord(text_Body[st_indx]))
    st_indx +=1

    
##Write a program to find the factors of a number
fact_num = int(input( print("Enter the number you want to find the factors of:")))
print("Factors of ", fact_num)

strt_num = 1

#Factors of a number can be divided on the number without reminder
while strt_num <= fact_num and fact_num % strt_num == 0:
    print (strt_num)
    strt_num += 1