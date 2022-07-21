DATA = load('rhfplotxy_C-0.0300x0.0000y0.0000z_den');

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
Im = Xm;
Jm = Ym;
I = 1;
J = 2;
Rhoi = DATA(:,4);
Rhom = reshape(Rhoi,n1,n2);

figure('Name','RHFDensity','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,log10(1e-20+Rhom),50);
pcolor(Im,Jm,log10(1e-20+Rhom));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp

%===========================================================
DATA = load('rhfplotxy_C-0.0300x0.0000y0.0000z_den_orb');

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
%===========================================================

HOMOm1Upi = DATA(:,4) + 1i*DATA(:,5);
HOMOm1Upm = reshape(HOMOm1Upi,n1,n2);

figure('Name','RHF:Cx:HOMOm1','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMOm1Upm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

HOMO1Upi = DATA(:,6) + 1i*DATA(:,7);
HOMO1Upm = reshape(HOMO1Upi,n1,n2);

figure('Name','RHF:Cx:HOMO1','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMO1Upm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp
%===========================================================

%LUMO1Upi = DATA(:,20) + 1i*DATA(:,21);
%LUMO1Upm = reshape(LUMO1Upi,n1,n2);
%
%figure('Name','RHF:Cx:LUMO1Up','NumberTitle','off'); clf; hold on;
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
%figure('Name','RHF:Cx:LUMO1Down','NumberTitle','off'); clf; hold on;
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
%figure('Name','RHF:Cx:LUMO2Up','NumberTitle','off'); clf; hold on;
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
%figure('Name','RHF:Cx:LUMO2Down','NumberTitle','off'); clf; hold on;
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

