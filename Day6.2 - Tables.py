###TABLES###
##rewrite again to insert elements using nested loop nd upload to GitHub w die question from day6.1
COUNTRIES = 8 #Rows
MEDALS = 3 #Columns
counts = [[0,3,0],
          [0,0,1],
          [0,0,1],
          [1,0,0],
          [0,0,1],
          [3,1,1],
          [0,1,0],
          [1,0,1]]

for i in range(COUNTRIES):
    for j in range(MEDALS) :
        print("%8d" % counts[i][j], end="")
    print() # Start a new line at the end of the row
    
###DICTIONARY & TUPLES###
##find and display the name from the dictionary that will be higher than 22
dec1 = {1:{"name":"P1",
           "age": 22},
        2:{"name":"P2",
           "age":27}}

for key, value in dec1.items():
        if dec1[1]["age"] >22:
            print (dec1[1]["name"])
            
        elif dec1[2]["age"] >22:
            print (dec1[2]["name"])
            break

