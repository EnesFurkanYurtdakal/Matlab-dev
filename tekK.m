%% 1.Soru:
x=-4*pi:0.1:4*pi;%%Bu sat�rda x de�erinin aral���n� belirliyoruz.
sinh(x)=((exp(x)-exp(-x))/2);%%Bu sat�rda sin�s fonksiyonunu tan�mlad�k.
cosh(x)=((exp(x)+exp(-x))/2);%%Bu sat�rda cosin�s fonksiyonunu tan�mlad�k.
hold on %%�st �ste grafik �izdirme komutu.
plot(x,sinh(x),'r');%%sin�s fonksiyonunu �izdirme komutu,k�rm�z� renkte.
plot(x,cosh(x),'b');%%cosin�s fonksiyonunu �izdirme komutu,mavi renkte.
hold off

%% 2.Soru:
xlabel('x-axis');%%x ekseninin ismi.
ylabel('y-axis');%%y ekseninin ismi .
x_length=30;%%x ekseninin  uzunlu�u.
y_length=40;%%y ekseninin uzunlu�u.
A=x_length*y_length; %%y�zey alan�n� bulma.
d=0.002:0.0001:0.010;%%d nin de�er aral���.
E=8.85*exp(-12);%%sabit say� tan�mlanmas�.
C=(E*A./d);%%i�lem fonksiyonu.
plot(d,C);%%�izdirme komutu

%% 3.Soru:
A=[-7 8 16;
   11 -9 48;
   6 -25 -13];%%A matrisinin tan�mlanmas�.
B=[4 3 81;
   -5 7 11;
   12 -9 -32];%%B matrisinin tan�mlanmas�.
C=[-3 -4 1;
   9 2 6;
   13 11 15];%%C matrsinin tan�mlanmas�.
   
%%(a):
A_sorted=sort(A);
sort(A);%%s�tunlar� k���kten b�y��e s�ralama komutu.
%%(b):
B_sorted=sort(B')';
sort(B')';%%sat�rlar� k���kten b�y��e s�ralama komutu.
%%(c):
C_SumOfColum=sum(C);
sum(C);%%her bir s�tunu tolama komutu.
%%(d):
C_SumOfRow=sum(C')';
sum(C')';%%her bir sat�r� toplama komutu.
%%(e):
A_tranz=A';
A';%%bu komut sat�rlarla s�tunlar�n yerini de�i�tirir.
%%(f):
A+B(2:3.2:3)+C;%%BU MATR�S TOPLAMA ��LEM�NDE A MATR�S�N� B'N�N 2.SATIRININ 1.S�TUNUNDA BULUNAN ELEMAN �LE C MATR�S�N� TOPLUYORUZ.BU ��LEMDE B MATR�S�N�N 2'DEN 3'E KADAR 3.2 ARTI�LA ARTMASI LAZIM ODA SADECE 1 ELEMAN YAPMI� OLUYOR SADECE 2.SATIRIN 1.S�TUNUNU ALMI� OLUYORUZ.
%%(g):
 ResultedMat=A-B/4-2*C;
 A-B/4-2*C;%%bu i�lemde matris toplama i�lemi yap�l�r.

%% 4.Soru:
Kule1_koordinat=[-1.38;
                 0.09];%%verilen bilgilere g�re kulenin koordinat matrisini girme.
Kule2_koordinat=[0.57;
                 1.62];%%verilen bilgilere g�re kulenin koordinat matrisini girme
Kule3_koordinat=[1.22;
                 0.78];%%verilen bilgilere g�re kulenin koordinat matrisini girme
Kule1_uzakl�k=[2.1034];%%kulenin mobil cihaza olan uzakl���.
Kule2_uzakl�k=[0.8205];%%kulenin mobil cihaza olan uzakl���.
Kule3_uzakl�k=[0.6203];%%kulenin mobil cihaza olan uzakl���.
Kule1in_telefonkooordinatlar�=[-1.38-x1;
                               0.09-y1];%%aradaki uzakl��� bulmak i�in x-x1 ve y-y1 i�lemini matris �eklinde yazma.
Kule2nin_telefonkoordinatlar�=[1.22-x2;
                               1.62-y2];%%aradaki uzakl��� bulmak i�in x-x1 ve y-y1 i�lemini matris �eklinde yazma.                               
Kule3�n_telefonkoordinatlar�=[1.22-x3;
                              0.78-y3];%%aradaki uzakl��� bulmak i�in x-x1 ve y-y1 i�lemini matris �eklinde yazma.
syms x y
denklem1=sqrt(y^2-2*y*0.78+0.78^2+1.22^2-2*1.22*x+x^2)==0.6203%%bu denklemde (y-y3)^2 ve (x-x3)^2 de�erlerinin parantez kare a��l�m�yla mobil cizaha olan uzakl���na e�itleme.
denklem2=sqrt(y^2-2*y*1.62+1.62^2+1.22^2-2*1.22*x+x^2)==0.8205%%bu denklemde (y-y2)^2 ve (x-x2)^2 de�erlerinin parantez kare a��l�m�yla mobil cizaha olan uzakl���na e�itleme.                              
denklem3=sqrt(y^2-2*y*0.09+0.09^2+(-1.38^2)-2*(-1.38)*x+x^2)==2,1034%%bu denklemde (y-y1)^2 ve (x-x1)^2 de�erlerinin parantez kare a��l�m�yla mobil cizaha olan uzakl���na e�itleme.
cevap=solve([denklem1 denklem2 denklem3],[x y])%%solve komutuyla cevab� bulma.
cevap.x%%x de�erini belirtme.
cevap.y%%y de�erini belirtme.                             
                              
                              
               



 