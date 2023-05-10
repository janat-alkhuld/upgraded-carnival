###Arthmatic exercises###
##Calculate total Surface Volume and Area of a Cylinder
import math

h = 4
r = 6
PI = 3.14

TOTAL_SURFACE_VOLUME = PI*h*r**2
AREA_OF_A_CYLINDER = 2*PI*h*r + 2*PI*r**2

print ("The Total Surface Volume of the Cylinder= ",format(TOTAL_SURFACE_VOLUME,".2f"))
print ("The Area of a Cylinder= ",format(AREA_OF_A_CYLINDER,".2f"))

##Calculate the total purchase cost, 5% VAT, 1 ton = 1 OMR, we have 10 tons

PRICE_TON_OF_IRON = 1
totalAmount = 10
TAX = 5/100


TOTAL_COST_IRON = PRICE_TON_OF_IRON * totalAmount
VAT = TAX * totalAmount
TOTAL_PURCHASE = TOTAL_COST_IRON + VAT

print ("The total purchase cost= ",TOTAL_PURCHASE, "OMR")