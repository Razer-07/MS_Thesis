import numpy as np
L=[]
for i in range(11):
    with open('file_y'+str(i)+'.out') as line:
        l=line.readlines()
    L.append(float(l[591][33:51]))    

np.savetxt('xvalue.txt',np.array(L))    
