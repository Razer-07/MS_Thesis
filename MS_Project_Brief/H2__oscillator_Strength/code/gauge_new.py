import numpy as np
for i in range(0,11):
    l="file_x"+str(i)+".out"
    g=open(l,'r')
    n1=open("X_arrayLEnth"+str(i)+".txt","a+")
    n2=open("X_arrayVeloc"+str(i)+".txt","a+")
    with g as line:
        p=line.readlines()

    j=0
    for i in p:
        j=j+1
        if i=='(RSP) Electric Dipole Oscillator Strength\n':
            #print(i)
            v=p[j]
            u=p[j+1]
    L=v.split() 
    V=u.split()
    l1=L[2::]
    v1=V[2::]
    c1=[]
    c2=[]
    for a in l1:
        c1.append(float(a))
    for b in v1:
        c2.append(float(b))    
    a1=np.array(c1)
    a2=np.array(c2)
    np.savetxt(n1,a1,newline="\n")
    np.savetxt(n2,a2,newline="\n")
    n1.close()
    n2.close()
    g.close()
