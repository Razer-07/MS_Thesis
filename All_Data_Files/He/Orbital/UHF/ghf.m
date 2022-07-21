DATA = load('plotxy1.csv');

MOLECULE = [
    0.0000 0.0000 0.0000
];

n1 = 101;
n2 = 100;
Xi = DATA(:,1);
Yi = DATA(:,2);
Zi = DATA(:,3);
Xm = reshape(Xi,n1,n2);
Ym = reshape(Yi,n1,n2);
Zm = reshape(Zi,n1,n2);
Im = Xm;
Jm = Ym;
I = 1;
J = 2;
Rhoi = DATA(:,4);
Rhom = reshape(Rhoi,n1,n2);

figure('Name','Density','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,log10(1e-20+Rhom),50);
pcolor(Im,Jm,log10(1e-20+Rhom));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp

%===========================================================
DATA = load('plotxy1.csv');

n1 = 101;
n2 = 100;
Xi = DATA(:,1);
Yi = DATA(:,2);
Zi = DATA(:,3);
Xm = reshape(Xi,n1,n2);
Ym = reshape(Yi,n1,n2);
Zm = reshape(Zi,n1,n2);
Im = Ym;
Jm = Zm;
I = 1;
J = 2;
%===========================================================

HOMOm1Upi = DATA(:,4) + 1i*DATA(:,5);
HOMOm1Upm = reshape(HOMOm1Upi,n1,n2);

figure('Name','HOMOm1Up','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMOm1Upm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMOm1Downi = DATA(:,6) + 1i*DATA(:,7);
HOMOm1Downm = reshape(HOMOm1Downi,n1,n2);

figure('Name','HOMOm1Down','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMOm1Downm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMOm2Upi = DATA(:,8) + 1i*DATA(:,9);
HOMOm2Upm = reshape(HOMOm2Upi,n1,n2);

figure('Name','HOMOm2Up','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMOm2Upm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMOm2Downi = DATA(:,10) + 1i*DATA(:,11);
HOMOm2Downm = reshape(HOMOm2Downi,n1,n2);

figure('Name','HOMOm2Down','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMOm2Downm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMO1Upi = DATA(:,12) + 1i*DATA(:,13);
HOMO1Upm = reshape(HOMO1Upi,n1,n2);

figure('Name','HOMO1Up','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMO1Upm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMO1Downi = DATA(:,14) + 1i*DATA(:,15);
HOMO1Downm = reshape(HOMO1Downi,n1,n2);

figure('Name','HOMO1Down','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMO1Downm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMO2Upi = DATA(:,16) + 1i*DATA(:,17);
HOMO2Upm = reshape(HOMO2Upi,n1,n2);

figure('Name','HOMO2Up','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMO2Upm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMO2Downi = DATA(:,18) + 1i*DATA(:,19);
HOMO2Downm = reshape(HOMO2Downi,n1,n2);

figure('Name','HOMO2Down','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMO2Downm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

%LUMO1Upi = DATA(:,20) + 1i*DATA(:,21);
%LUMO1Upm = reshape(LUMO1Upi,n1,n2);
%
%figure('Name','LUMO1Up','NumberTitle','off'); clf; hold on;
%
%%contourf(Im,Jm,abs(LUMOm),50);
%pcolor(Im,Jm,abs(LUMO1Upm));
%plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
%shading interp
%%===========================================================
%
%LUMO1Downi = DATA(:,22) + 1i*DATA(:,23);
%LUMO1Downm = reshape(LUMO1Downi,n1,n2);
%
%figure('Name','LUMO1Down','NumberTitle','off'); clf; hold on;
%
%%contourf(Im,Jm,abs(LUMOm),50);
%pcolor(Im,Jm,abs(LUMO1Downm));
%plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
%shading interp
%%===========================================================
%
%LUMO2Upi = DATA(:,24) + 1i*DATA(:,25);
%LUMO2Upm = reshape(LUMO2Upi,n1,n2);
%
%figure('Name','LUMO2Up','NumberTitle','off'); clf; hold on;
%
%%contourf(Im,Jm,abs(LUMOm),50);
%pcolor(Im,Jm,abs(LUMO2Upm));
%plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
%shading interp
%%===========================================================
%
%LUMO2Downi = DATA(:,26) + 1i*DATA(:,27);
%LUMO2Downm = reshape(LUMO2Downi,n1,n2);
%
%figure('Name','LUMO2Down','NumberTitle','off'); clf; hold on;
%
%%contourf(Im,Jm,abs(LUMOm),50);
%pcolor(Im,Jm,abs(LUMO2Downm));
%plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
%shading interp
%===========================================================
%Diff = abs(HOMODownm) - abs(LUMOUpm);

%figure(6); clf; hold on;

%contourf(Im,Jm,abs(LUMOm),50);
%pcolor(Im,Jm,Diff);
%plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
%shading interp

