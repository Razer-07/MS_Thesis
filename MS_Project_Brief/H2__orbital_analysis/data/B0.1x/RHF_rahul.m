DATA = load('plotxyB01x.csv');

MOLECULE = [
     0.1643    0.0000    0.0000     
     -0.1643   0.0000    0.0000
];
n1 = 101;
n2 = 100;
Xi = DATA(:,1);
Yi = DATA(:,2);
Zi = DATA(:,3);
Xm = reshape(Xi,n1,n2);
Ym = reshape(Yi,n1,n2);
Zm = reshape(Zi,n1,n2);
Rhoi = DATA(:,4);
Rhom = reshape(Rhoi,n1,n2);

figure('Name','RHFDensity','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,log10(1e-20+Rhom),50);
pcolor(Xm,Ym,log10(1e-20+Rhom));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp

DATA = load('plotxyB01x.csv_orb');

n1 = 101;
n2 = 100;
Xi = DATA(:,1);
Yi = DATA(:,2);
Zi = DATA(:,3);
Xm = reshape(Xi,n1,n2);
Ym = reshape(Yi,n1,n2);
Zm = reshape(Zi,n1,n2);

HOMOi = DATA(:,4) + 1i*DATA(:,5);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_1','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(HOMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp


HOMOi = DATA(:,6) + 1i*DATA(:,7);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_2','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp

LUMOi = DATA(:,8) + 1i*DATA(:,9);
LUMOm = reshape(LUMOi,n1,n2);

figure('Name','RHFOrb_3','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(LUMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp


HOMOi = DATA(:,10) + 1i*DATA(:,11);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_4','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp


HOMOi = DATA(:,12) + 1i*DATA(:,13);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_5','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp


HOMOi = DATA(:,14) + 1i*DATA(:,15);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_6','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp



HOMOi = DATA(:,16) + 1i*DATA(:,17);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_7','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp

HOMOi = DATA(:,18) + 1i*DATA(:,19);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_8','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
