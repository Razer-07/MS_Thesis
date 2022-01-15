DATA = load('f-11.csv');

MOLECULE = [
      0.7572   -0.4692 0.0000
     -0.7572     -0.4692 0.0000
     0.000000   0.1173 0.0000
     ];
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
Rhoi = DATA(:,4);
Rhom = reshape(Rhoi,n1,n2);

figure('Name','Density','NumberTitle','off'); clf; hold on;

contourf(Im,Jm,log(1e-12+Rhom),100);
%contourf(Im,Jm,Rhom,20);
%pcolor(Im,Jm,log10(1e-20+Rhom));
%pcolor(Im,Jm,log10(1e12*Rhom));
plot(MOLECULE(:,I),MOLECULE(:,J),'kx','MarkerSize',20);

shading interp