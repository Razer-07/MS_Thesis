import numpy as np
for xx in range(11):
    #opening the output file 
    #edit the file name string accordingly
    l="file_x"+str(xx)+".out"
    g=open(l,'r')
    
    #reading through the output file
    with g as line:
        p=line.readlines()
        #print(p)
    j=0
    for i in p:
        j=j+1
        #searching a specific string i from the file line p
        if i=='The Final eigenvalues from the Davidson method\n':
            
            #print(i)
            #print(p[j+1])  
            #From the file p[j+1] will give us the string contaning the energy values
            v=p[j+1]
    #print(type(v)) 
    #print(v)

    #splitting the v string with space 
    jj=v.split()
    #print(jj)
    c=[]
    #extracting the energies only to o 
    o=jj[3::]
    #print(o)
    #float the numbers in the list and appending to c 
    for i in o:
        c.append(float(i))
    #print(c)

    a=np.array(c)
    #filename=input("filename is :=  ")
    #can change the file name according to the magnetic field directions
    n=open("arrayX.txt","a+")
    #writting to file only with energy values
    np.savetxt(n,a,newline="\n")

    n.close()       
   
