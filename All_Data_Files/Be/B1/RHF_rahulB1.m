DATA = load('plotxyB1.csv');

MOLECULE = [
    0.0000  0.0000  0.0000
];

n1 = 201;
n2 = 200;
%Xi = DATA(:,1);
%Yi = DATA(:,2);
%Zi = DATA(:,3);
%Xm = reshape(Xi,n1,n2);
%Ym = reshape(Yi,n1,n2);
%Zm = reshape(Zi,n1,n2);
%Rhoi = DATA(:,4);
%Rhom = reshape(Rhoi,n1,n2);

%figure('Name','RHFDensity','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,log10(1e-20+Rhom),50);
%pcolor(Xm,Ym,log10(1e-20+Rhom));
%plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
%shading interp

DATA = load('plotxyB1.csv_orb');

n1 = 201;
n2 = 200;
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
xlim([-1 1])
ylim([-1 1 ])
caxis([0 3])
colorbar
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
saveas(gcf,'/home/rahul/Desktop/Be/B1/orb_1_RHF_Bx_1.png','png');




HOMOi = DATA(:,6) + 1i*DATA(:,7);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_2','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
%xlim([-1 1])
%ylim([-1 1 ])
%caxis([0 0.6])
colorbar

pcolor(Xm,Ym,abs(HOMOm));

plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
%saveas(gcf,'/home/rahul/Desktop/Be/B1/orb_2_RHF_Bx_1.png','png')


LUMOi = DATA(:,8) + 1i*DATA(:,9);
LUMOm = reshape(LUMOi,n1,n2);

figure('Name','RHFOrb_3','NumberTitle','off'); clf; hold on;

%contourf(Ym,Zm,abs(LUMOm),50);
%xlim([-3 3])
%ylim([-3 3])
%axis([0 0.2])
colorbar

pcolor(Xm,Ym,abs(LUMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
%saveas(gcf,'/home/rahul/Desktop/Be/B1/orb_3_RHF_Bx_1.png','png')



HOMOi = DATA(:,10) + 1i*DATA(:,11);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_4','NumberTitle','off'); clf; hold on;
xlim([-1 1])
ylim([-1 1])
%axis([0 0.6])
colorbar


%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
saveas(gcf,'/home/rahul/Desktop/Be/B1/orb_4_RHF_Bx_1.png','png')



HOMOi = DATA(:,12) + 1i*DATA(:,13);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_5','NumberTitle','off'); clf; hold on;
%xlim([-3 3])
%ylim([-3 3])
%axis([0 0.2])
colorbar


%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
%saveas(gcf,'/home/rahul/Desktop/Be/B1/orb_5_RHF_Bx_1.png','png')


HOMOi = DATA(:,14) + 1i*DATA(:,15);
HOMOm = reshape(HOMOi,n1,n2);

figure('Name','RHFOrb_6','NumberTitle','off'); clf; hold on;
xlim([-4 4])
ylim([-4 4])
%axis([0 0.8])
colorbar


%contourf(Ym,Zm,abs(LUMOm),50);
pcolor(Xm,Ym,abs(HOMOm));
plot(MOLECULE(:,1),MOLECULE(:,2),'kx','MarkerSize',20);
shading interp
saveas(gcf,'/home/rahul/Desktop/Be/B1/orb_6_RHF_Bx_1.png','png')
