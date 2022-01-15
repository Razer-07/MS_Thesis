# This script is for Making multiple output file and running the london program for every file
#Uncomment the tuple accordingly for B only in X direction, B only in Y direction & only in Z direction
import os
import numpy as np
#For B only in z direction
t= tuple((0,0,np.around(i,2)) for i in np.around(np.linspace(0,1,11),2))


#Loading the given input file of H20
f=open('he.inp')
script=open('he.sh')
with script as line:
	scr=line.readlines()
with f as line:
#reading through the file
    s=line.readlines()
#s will be as a list
for i in range(len(t)):
#I find out that line 102 ,that is here s[102] contains the magnetic field value and Now change that value to our input vlaues
    s[102]=f'      magnetic-field = {str(t[i])}\n'
    
    k=open("file_z"+str(i)+".inp","w")
    #writting that input to a seperate file for every Magnetic field value
    #New input file created
    for j in s:
        k.write(j)
    k.close()
#for script file update 
    scr[23]=f'/home/sangita.sen/packages/london/london.x file_z'+str(i)+'.inp >file_z'+str(i)+'.out\n'
    script1=open("he_z_"+str(i)+".sh","w")
    for l in scr:
        script1.write(l)
    script1.close()
     
    #Running the london with every file  and save the output to a file 
    #Give the london.x path according to your path variable (For me it is /home/rahul/Documents/london/./london.x)
    os.system("qsub he_z_"+str(i)+".sh")
f.close() 
