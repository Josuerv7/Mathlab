clear 
close all
A=[1,2,3;-1,0,2;4,5,6];
B=ones(3);
C=[1 3 0;-1 5 6; -2 4 3; 1 -1 6];
Size=size (A)

%B=ones(3)
%B=ones(3);
%Suma_AyB=A+B
%Suma_AyC=A+C
%Resta_AyB=A-B
%Multi_AyB=A*B
max(A)
min(A)
Cero=C(1,3)
class(A)
transpose(C)
C.'
a=[-0.2 0.8;1 0.2]
im2uint8(a)
v=[1 2 3 4 5 6 7 8 9 10]
v(2:8)
v(3:end)
v(2:2:end)
%A(fi:ff,ci:cf)
%vectores=paisaje(1:1189,1:1024);

hsv = rgb2hsv (Img);
Red=hsv(:,:,1); Green=hsv(:,:,2); Blue=hsv(:,:,3);
azul = ecualizar(Blue);
hsvEcu= cat(3,Red,Green,azul);
Imghsv = hsv2rgb (hsvEcu);
figure
subplot(1,2,1), imshow(Img), title("Imagen Original");
subplot(1,2,2), imshow(Imghsv), title("Imagen HSV Ecualizada");

