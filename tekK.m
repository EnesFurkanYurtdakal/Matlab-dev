%% 1.Soru:
x=-4*pi:0.1:4*pi;%%Bu satýrda x deðerinin aralýðýný belirliyoruz.
sinh(x)=((exp(x)-exp(-x))/2);%%Bu satýrda sinüs fonksiyonunu tanýmladýk.
cosh(x)=((exp(x)+exp(-x))/2);%%Bu satýrda cosinüs fonksiyonunu tanýmladýk.
hold on %%üst üste grafik çizdirme komutu.
plot(x,sinh(x),'r');%%sinüs fonksiyonunu çizdirme komutu,kýrmýzý renkte.
plot(x,cosh(x),'b');%%cosinüs fonksiyonunu çizdirme komutu,mavi renkte.
hold off

%% 2.Soru:
xlabel('x-axis');%%x ekseninin ismi.
ylabel('y-axis');%%y ekseninin ismi .
x_length=30;%%x ekseninin  uzunluðu.
y_length=40;%%y ekseninin uzunluðu.
A=x_length*y_length; %%yüzey alanýný bulma.
d=0.002:0.0001:0.010;%%d nin deðer aralýðý.
E=8.85*exp(-12);%%sabit sayý tanýmlanmasý.
C=(E*A./d);%%iþlem fonksiyonu.
plot(d,C);%%çizdirme komutu

%% 3.Soru:
A=[-7 8 16;
   11 -9 48;
   6 -25 -13];%%A matrisinin tanýmlanmasý.
B=[4 3 81;
   -5 7 11;
   12 -9 -32];%%B matrisinin tanýmlanmasý.
C=[-3 -4 1;
   9 2 6;
   13 11 15];%%C matrsinin tanýmlanmasý.
   
%%(a):
A_sorted=sort(A);
sort(A);%%sütunlarý küçükten büyüðe sýralama komutu.
%%(b):
B_sorted=sort(B')';
sort(B')';%%satýrlarý küçükten büyüðe sýralama komutu.
%%(c):
C_SumOfColum=sum(C);
sum(C);%%her bir sütunu tolama komutu.
%%(d):
C_SumOfRow=sum(C')';
sum(C')';%%her bir satýrý toplama komutu.
%%(e):
A_tranz=A';
A';%%bu komut satýrlarla sütunlarýn yerini deðiþtirir.
%%(f):
A+B(2:3.2:3)+C;%%BU MATRÝS TOPLAMA ÝÞLEMÝNDE A MATRÝSÝNÝ B'NÝN 2.SATIRININ 1.SÜTUNUNDA BULUNAN ELEMAN ÝLE C MATRÝSÝNÝ TOPLUYORUZ.BU ÝÞLEMDE B MATRÝSÝNÝN 2'DEN 3'E KADAR 3.2 ARTIÞLA ARTMASI LAZIM ODA SADECE 1 ELEMAN YAPMIÞ OLUYOR SADECE 2.SATIRIN 1.SÜTUNUNU ALMIÞ OLUYORUZ.
%%(g):
 ResultedMat=A-B/4-2*C;
 A-B/4-2*C;%%bu iþlemde matris toplama iþlemi yapýlýr.

%% 4.Soru:
Kule1_koordinat=[-1.38;
                 0.09];%%verilen bilgilere göre kulenin koordinat matrisini girme.
Kule2_koordinat=[0.57;
                 1.62];%%verilen bilgilere göre kulenin koordinat matrisini girme
Kule3_koordinat=[1.22;
                 0.78];%%verilen bilgilere göre kulenin koordinat matrisini girme
Kule1_uzaklýk=[2.1034];%%kulenin mobil cihaza olan uzaklýðý.
Kule2_uzaklýk=[0.8205];%%kulenin mobil cihaza olan uzaklýðý.
Kule3_uzaklýk=[0.6203];%%kulenin mobil cihaza olan uzaklýðý.
Kule1in_telefonkooordinatlarý=[-1.38-x1;
                               0.09-y1];%%aradaki uzaklýðý bulmak için x-x1 ve y-y1 iþlemini matris þeklinde yazma.
Kule2nin_telefonkoordinatlarý=[1.22-x2;
                               1.62-y2];%%aradaki uzaklýðý bulmak için x-x1 ve y-y1 iþlemini matris þeklinde yazma.                               
Kule3ün_telefonkoordinatlarý=[1.22-x3;
                              0.78-y3];%%aradaki uzaklýðý bulmak için x-x1 ve y-y1 iþlemini matris þeklinde yazma.
syms x y
denklem1=sqrt(y^2-2*y*0.78+0.78^2+1.22^2-2*1.22*x+x^2)==0.6203%%bu denklemde (y-y3)^2 ve (x-x3)^2 deðerlerinin parantez kare açýlýmýyla mobil cizaha olan uzaklýðýna eþitleme.
denklem2=sqrt(y^2-2*y*1.62+1.62^2+1.22^2-2*1.22*x+x^2)==0.8205%%bu denklemde (y-y2)^2 ve (x-x2)^2 deðerlerinin parantez kare açýlýmýyla mobil cizaha olan uzaklýðýna eþitleme.                              
denklem3=sqrt(y^2-2*y*0.09+0.09^2+(-1.38^2)-2*(-1.38)*x+x^2)==2,1034%%bu denklemde (y-y1)^2 ve (x-x1)^2 deðerlerinin parantez kare açýlýmýyla mobil cizaha olan uzaklýðýna eþitleme.
cevap=solve([denklem1 denklem2 denklem3],[x y])%%solve komutuyla cevabý bulma.
cevap.x%%x deðerini belirtme.
cevap.y%%y deðerini belirtme.                             
                              
                              
               



 