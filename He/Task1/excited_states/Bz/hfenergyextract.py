L=[]
for i in range(11):
    with open('file_z'+str(i)+'.out') as line:
        l=line.readlines()
    L.append(float(l[591][33:51]))    
import numpy as np
np.savetxt('zvalue.txt',np.array(L))    
