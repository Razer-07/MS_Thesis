DATA = load('rhfplotxy_C0.0000x0.0000y0.0000z_den');

MOLECULE = [
    0.0000  0.0000  0.0000
    0.0000  0.0000  2.9553
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

DATA = load('rhfplotxy_C0.0000x0.0000y0.0000z_den_orb');

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

figure('Name','RHFHOMOm1','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(HOMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp


HOMOi = DATA(:,6) + 1i*DATA(:,7);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFHOMO','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp

LUMOi = DATA(:,8) + 1i*DATA(:,9);
LUMOm = reshape(LUMOi,n1,n2);

figure('Name','RHFLUMO','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(LUMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
