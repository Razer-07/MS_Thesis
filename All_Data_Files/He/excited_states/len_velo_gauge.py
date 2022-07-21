import numpy as np
for i in range(0,10):
    l="file_x"+str(i)+".out"
    g=open(l,'r')
    n1=open("X_arrayLEnth"+str(i)+".txt","a+")
    n2=open("X_arrayVeloc"+str(i)+".txt","a+")
    with g as line:
        p=line.readlines()
    #print (type(p))
    #print(p)
   #l=input("filename:: ")
   
    j=0
    for i in p:
        j=j+1
        if i=='(RSP) Electric Dipole Oscillator Strength\n':
        #print(i)
            v=p[j]
            u=p[j+1]
        #print(p[j])
        #print(p[j+1])  
        
#print(v,u)
    L=v.split()
    V=u.split()
    #print(L)

#print(V[2])

    l1=L[2::]
    v1=V[2::]
   # print(l1,v1)



    c1=[]
    c2=[]
    for a in l1:
            c1.append(float(a))
    for b in v1:
            c2.append(float(b))        
    #print(c1)        

    a1=np.array(c1)
    a2=np.array(c2)
    #filename=input("filename is :=  ")
    #can change the file name according to the magnetic field directions
    

    #writting to file only with energy values
    np.savetxt(n1,a1,newline="\n")
    np.savetxt(n2,a2,newline="\n")

    n1.close()
    n2.close()
    g.close()
    
    
    
for i in range(0,10):
    l="file_y"+str(i)+".out"
    g=open(l,'r')
    n3=open("Y_arrayLEnth"+str(i)+".txt","a+")
    n4=open("Y_arrayVeloc"+str(i)+".txt","a+")
    with g as line:
        p=line.readlines()
    #print (type(p))
    #print(p)
   #l=input("filename:: ")
   
    j=0
    for i in p:
        j=j+1
        if i=='(RSP) Electric Dipole Oscillator Strength\n':
        #print(i)
            v=p[j]
            u=p[j+1]
        #print(p[j])
        #print(p[j+1])  
        
#print(v,u)
    L=v.split()
    V=u.split()
    #print(L)

#print(V[2])

    l1=L[2::]
    v1=V[2::]
   # print(l1,v1)



    c3=[]
    c4=[]
    for a in l1:
            c3.append(float(a))
    for b in v1:
            c4.append(float(b))        
    #print(c1)        

    a3=np.array(c3)
    a4=np.array(c4)
    #filename=input("filename is :=  ")
    #can change the file name according to the magnetic field directions
    

    #writting to file only with energy values
    np.savetxt(n3,a3,newline="\n")
    np.savetxt(n4,a4,newline="\n")

    n3.close()
    n4.close()
    g.close()
    
    
for i in range(0,10):
    l="file_z"+str(i)+".out"
    g=open(l,'r')
    n5=open("Z_arrayLEnth"+str(i)+".txt","a+")
    n6=open("Z_arrayVeloc"+str(i)+".txt","a+")
    with g as line:
        p=line.readlines()
    #print (type(p))
    #print(p)
   #l=input("filename:: ")
   
    j=0
    for i in p:
        j=j+1
        if i=='(RSP) Electric Dipole Oscillator Strength\n':
        #print(i)
            v=p[j]
            u=p[j+1]
        #print(p[j])
        #print(p[j+1])  
        
#print(v,u)
    L=v.split()
    V=u.split()
    #print(L)

#print(V[2])

    l1=L[2::]
    v1=V[2::]
   # print(l1,v1)



    c5=[]
    c6=[]
    for a in l1:
            c5.append(float(a))
    for b in v1:
            c6.append(float(b))        
    #print(c1)        

    a5=np.array(c5)
    a6=np.array(c6)
    #filename=input("filename is :=  ")
    #can change the file name according to the magnetic field directions
    

    #writting to file only with energy values
    np.savetxt(n5,a5,newline="\n")
    np.savetxt(n6,a6,newline="\n")

    n5.close()
    n6.close()
    g.close()
    
   
