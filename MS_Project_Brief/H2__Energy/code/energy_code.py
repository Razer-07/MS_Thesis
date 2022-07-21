# This script is for Making multiple output file and running the london program for every file
#Uncomment the tuple accordingly for B only in X direction, B only in Y direction & only in Z direction
import os
import numpy as np
#For B only in X direction
t= tuple((np.around(i,2),0,0) for i in np.around(np.linspace(0,1,11),2))


#Loading the given input file of H20
f=open('h2.inp')
#script=open('h2.sh')
#with script as line:
#	scr=line.readlines()
with f as line:
#reading through the file
    s=line.readlines()
#s will be as a list
for i in range(len(t)):
#I find out that line 102 ,that is here s[102] contains the magnetic field value and Now change that value to our input vlaues
    s[102]=f'      magnetic-field = {str(t[i])}\n'
    
    k=open("file_x"+str(i)+".inp","w")
    #writting that input to a seperate file for every Magnetic field value
    #New input file created
    for j in s:
        k.write(j)
    k.close()
    #Running the london with every file  and save the output to a file 
    #Give the london.x path according to your path variable (For me it is /home/rahul/Documents/london/./london.x)
    os.system("/home/rahul/Documents/london-master/./london.x file_x"+str(i)+".inp > file_x"+str(i)+".out")
    #os.system("qsub he_x_"+str(i)+".sh")
f.close() 
