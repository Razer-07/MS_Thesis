L=[]
for i in range(11):
    with open('file_z'+str(i)+'.out') as line:
        l=line.readlines()  
        m=str(l)
    k=m.find('RSP: Hartree-Fock final energy = ')+len('RSP: Hartree-Fock final energy = ')
    L.append(float(m[k:k+15]))
import numpy as np
np.savetxt('zvalue.txt',np.array(L))    
