DATA = load('plotxyBx1.csv');

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

%figure('Name','Density','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,log10(1e-20+Rhom),50);
%pcolor(Im,Jm,log10(1e-20+Rhom));
%plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
%shading interp
%______________________________________________________________

DATA1 = load('plotxyBx1.csv_orb_up');

%--------------------------------------------------------------
%HOMOm1Upi = DATA1(:,4) + 1i*DATA1(:,5);
%HOMOm1Upi = DATA1(:,6) + 1i*DATA1(:,7);
%HOMOm1Upi = DATA1(:,8) + 1i*DATA1(:,9);
% p orbitals starts from here
%HOMOm1Upi = DATA1(:,10) + 1i*DATA1(:,11);
%HOMOm1Upi = DATA1(:,12) + 1i*DATA1(:,13);
%HOMOm1Upi = DATA1(:,14) + 1i*DATA1(:,15);
%HOMOm1Upi = DATA1(:,16) + 1i*DATA1(:,17);
HOMOm1Upi = DATA1(:,18) + 1i*DATA1(:,19);
HOMOm1Upm = reshape(HOMOm1Upi,n1,n2);

figure('Name','HOMOm1Up','NumberTitle','off'); clf; hold on;

%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMOm1Upm));hold on;
title('UP');

plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp

%---------------------------------------------------------------
DATA2=load('plotxyBx1.csv_orb_down');
%HOMO2Downi = DATA2(:,4) + 1i*DATA2(:,5);
%HOMO2Downi = DATA2(:,6) + 1i*DATA2(:,7);
%HOMO2Downi = DATA2(:,8) + 1i*DATA2(:,9);
%HOMO2Downi = DATA2(:,10) + 1i*DATA2(:,11);
%HOMO2Downi = DATA2(:,12) + 1i*DATA2(:,13);
%HOMO2Downi = DATA2(:,14) + 1i*DATA2(:,15);
%HOMO2Downi = DATA2(:,16) + 1i*DATA2(:,17);
HOMO2Downi = DATA2(:,18) + 1i*DATA2(:,19);
HOMO2Downm = reshape(HOMO2Downi,n1,n2);

figure('Name','HOMO2Down','NumberTitle','off'); clf; hold on;
title('DOWN');
%contourf(Im,Jm,abs(HOMOm),50);
pcolor(Im,Jm,abs(HOMO2Downm));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);
shading interp


