###LIST WITH FUNCTIONS###
##extend()##
x = [1,2,3,4,5]
y = [6,5]
x.extend(y) ## to add more than one element to the list as opposed to insert()
print (x)

##join()
x = ['3','4','5']
for i in x:
    n = "|".join(x) #to replace the ',' with '|' instead of using replace()
print(n)

##List comprehension
result = [i**2 for i in range(5)] #this is the simplification of the metod below (better time and space complexities
print(result) #output = [0, 1, 4, 9, 16]
#for i in range(5)
#	result.append(i**2)
#print(result) #output = [0, 1, 4, 9, 16]

result = [i for i in range(5) if i %2==0]
print(result)#output = [0, 2, 4]

#res = []
#for i in range(5):
#    if i %2 == 0:
#        res.append(i)
#print(res)#output = [0, 2, 4]

##
def CountInputs (sides):
    counters = [0] * (sides + 1)
    
    for i in range (1,sides+1):
        rolls = int(input("Enter your die rolls:"))
        
        if rolls <= sides:
            counters[rolls] = counters [rolls] +1
            
        elif rolls == "Q" or rolls == 'q':
            print ("Exiting the loop")
            break
        
    return counters

def PrintCounters (counters):
    res = [i for i in counters if i*i!=0 ]
    print(res)
        

def main():
    side =int(input("Enter the number of sides on your die:"))
    counters = CountInputs(side)
    PrintCounters(counters)
    
main()
