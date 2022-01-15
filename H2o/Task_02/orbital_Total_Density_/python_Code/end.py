#BEFORE RUNNING THE CODE >> PLACE CURRENT INPUT FILE IN THE FOLDER IN WHICH THIS SCRIPT PLACED

import numpy as np
import matplotlib.pyplot as plt
from numpy import genfromtxt

#To run the modified input file 
#Modify input file with values of coordinates

f=open("h2o.inp")

with f as line:
    s=line.readlines()

#print(type(s[9]))
#k=list(s[9])
##Find out the string which contains replacable values
##  m[42:89:1]


#should make it complete automation?
#m=        density-plot-data = {plotxy15.csv,(-5,-5,0),(15,0,0),(0,15,0),(0,0,1),(100x101x1),precision=4,scolon=y,fields{rho,j}}
#(x1,y1,z1),(x2,y2,z2),(x3,y3,z3)


#use replace function
#print(s[9])
m="        density-plot-data = {plotxy15.csv,(-5,-5,0),(15,0,0),(0,15,0),(0,0,1),(100x101x1),precision=4,scolon=y,fields{rho,j}}\n"

xx=input("format:: filename.csv,(-10,2,3),(3,21,1),(3,4,5),(0,0,1) is == ")
x=str(xx)
l2=m.replace(m[29:77],x)
s[9]=l2
print("Modified values is :: ",s[9])
i=int(input("filename extension value i is :: "))
k=open("file"+str(i)+".inp","w")
    #writting that input to a seperate file for every Magnetic field value
    #New input file created
for j in s:
     k.write(j)
k.close()
f.close()


#NOW RUN THE FILE IN LONDON

import os
os.system("timeout 64 /home/rahul/Documents/london-master/london.x "+"file"+str(i)+".inp")
print("csv file created and ended london program")

#EXTRACTING THE CSV FILE DATA


data = genfromtxt(str(input(".csv input filename is = ")), delimiter = ',')

y=data[1: ,1]
z=data[1: ,2]
d=data[1: ,3]
#extracting only the values which is unique (not repeatative) from x and y and make meshgrid

x1=np.array(list(set(y)))
x2=np.array(list(set(z)))

Y,Z=np.meshgrid(x1,x2)
print("X.shape and Y.shape:: ",Y.shape,Z.shape)

#=====================================================================================================

D=d.reshape(Y.shape)
print("shape of D is ",D.shape)

##To check the values of z obtanied

k=0
for i in range(len(d)):
    k=k+d[i]
print("Value of k is (sum of all elements of density)",k)
##=======================================================================================================
#if k>10:
#        break

#print("error data")

fig = plt.figure()
ax = plt.contourf(Y, Z, D, cmap='RdGy')

plt.colorbar(ax)
plt.title(str(input("PlotTitle=  ")))
plt.savefig(str(input("FigureName=  ")))
plt.show()
