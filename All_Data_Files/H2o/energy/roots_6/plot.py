#plotting the graph 
import numpy as np
import matplotlib.pyplot as plt
#file names given based on extracted output
#d=np.loadtxt("filename")
d1=np.loadtxt("arrayX.txt")
d2=np.loadtxt("arrayY.txt")
d3=np.loadtxt("arrayZ.txt")
#x values will be magneticfield
x=np.linspace(0,.1,10)
#print(x[0:9:1])
sy=x[0:10:1]
sh=x[0:10:1]
su=x[0:10:1]
#print(su)
#To get first excited state use d[1::4]
#To get 2nd   excited state use d[2::4]
#To get 3rd excited state use d[3::4]
#To get ground state use d[0::4]
#By the above change accordingly
y0=d1[0::6]
h0=d2[0::6]
u0=d3[0::6]
#plt.ylim(0,0.5555533)
#plt.xlim(0,0.333)

plt.plot(sy,y0,label="B Only in X")
plt.plot(sh,h0,label="B Only in Y")
plt.plot(su,u0,label="B Only in Z")
plt.xlabel("field strength")
plt.ylabel("EnergyValues")
plt.grid()
plt.legend()
plt.savefig("1st excited state.png")
plt.show()


y1=d1[1::6]
h1=d2[1::6]
u1=d3[1::6]
plt.plot(sy,y1,label="B Only in X")
plt.plot(sh,h1,label="B Only in Y")
plt.plot(su,u1,label="B Only in Z")
plt.xlabel("field strength")
plt.ylabel("EnergyValues")
plt.grid()
plt.legend()
plt.savefig("2nd excited state.png")
plt.show()


y2=d1[2::6]
h2=d2[2::6]
u2=d3[2::6]
plt.plot(sy,y2,label="B Only in X")
plt.plot(sh,h2,label="B Only in Y")
plt.plot(su,u2,label="B Only in Z")
plt.xlabel("field strength")
plt.ylabel("EnergyValues")
plt.grid()
plt.legend()
plt.savefig("3rd excited state.png")
plt.show()


y3=d1[3::6]
h3=d2[3::6]
u3=d3[3::6]
plt.plot(sy,y3,label="B Only in X")
plt.plot(sh,h3,label="B Only in Y")
plt.plot(su,u3,label="B Only in Z")
plt.xlabel("field strength")
plt.ylabel("EnergyValues")
plt.grid()
plt.legend()
plt.savefig("4th excited state.png")
plt.show()



y4=d1[4::6]
h4=d2[4::6]
u4=d3[4::6]
plt.plot(sy,y4,label="B Only in X")
plt.plot(sh,h4,label="B Only in Y")
plt.plot(su,u4,label="B Only in Z")
plt.xlabel("field strength")
plt.ylabel("EnergyValues")
plt.grid()
plt.legend()
plt.savefig("5th excited state.png")
plt.show()

y5=d1[5::6]
h5=d2[5::6]
u5=d3[5::6]
plt.plot(sy,y5,label="B Only in X")
plt.plot(sh,h5,label="B Only in Y")
plt.plot(su,u5,label="B Only in Z")
plt.xlabel("field strength")
plt.ylabel("EnergyValues")
plt.grid()
plt.legend()
plt.savefig("6th excited state.png")
plt.show()
