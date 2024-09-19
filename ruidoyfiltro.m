close all
clear
Im=imread('https://thumbs.dreamstime.com/b/color-verde-real-que-sorprende-del-lago-mountains-paisaje-natural-monta%C3%B1as-austria-viaje-europeo-tiempo-de-verano-143152552.jpg');
img=rgb2gray(Im);
c=imread("https://th.bing.com/th/id/R.f620710419ddeb3400ae5fad67f265de?rik=kxkP02N6t5vMfQ&pid=ImgRaw&r=0");
C=rgb2gray(c);
Cfilt=ruidoimp(C,0.05,230,100);
figure
subplot(2,2,1);
imshow(C); title("Imagen Original")
subplot(2,2,2);
imshow(Cfilt); title("Imagen con Ruido")
subplot(2,2,3);
imshow(img); title("Imagen Original")
imgfilt=ruidoimp(img,0.08,180,120);
subplot(2,2,4);
imshow(imgfilt); title("Imagen con Ruido")

figure
Cn=imnoise(C,"salt & pepper",0.30); %Ruido sal y pimienta
subplot(2,2,1);
imshow(C); title("Imagen Original")
subplot(2,2,2);
imshow(Cn); title("Imagen con Ruido sal y pimienta")
figure
Dn=imnoise(C,"speckle",0.15); %Ruido multiplcativo
subplot(2,2,1);
imshow(C); title("Imagen Original")
subplot(2,2,2);
imshow(Dn); title("Imagen con Ruido multiplicativo")
figure
En=imnoise(C,"gaussian",0,0.08); %Ruido blanco Gaussiano
subplot(2,2,1);
imshow(C); title("Imagen Original")
subplot(2,2,2);
imshow(En); title("Imagen con Ruido blanco Gaussiano")

b=1;
h1=(1/10)*[1,1,1;1,2,1;1,1,1];
h2=(1/16)*[1 2 1;2 4 2;1 2 1];
h3=(1/((b+2)^2))*[1 b 1;b b^2 b;1 b 1];

Cn_mov=movav(Cn,10,10);
figure
subplot(3,3,1); imshow(C); title("Imagen Original")
subplot(3,3,3); imshow(Cn); title("Imagen Original (Sal y pimienta)")
subplot(3,3,4); imshow(Cn_mov); title("Imagen Filtro movav")
Cn_h1=uint8(filter2(h1,Cn,"valid"));
subplot(3,3,6); imshow(Cn_h1); title("Imagen Filtro H1")
Cn_h2=uint8(filter2(h2,Cn,"valid"));
subplot(3,3,7); imshow(Cn_h2); title("Imagen Filtro H2")
Cn_h3=uint8(filter2(h3,Cn,"valid"));
subplot(3,3,9); imshow(Cn_h3); title("Imagen Filtro H3")

Dn_mov=movav(Dn,10,10);
figure
subplot(3,3,1); imshow(C); title("Imagen Original")
subplot(3,3,3); imshow(Dn); title("Imagen con Ruido multiplicativo")
subplot(3,3,4); imshow(Dn_mov); title("Imagen Filtro movav")
Dn_h1=uint8(filter2(h1,Dn,"valid"));
subplot(3,3,6); imshow(Dn_h1); title("Imagen Filtro H1")
Dn_h2=uint8(filter2(h2,Dn,"valid"));
subplot(3,3,7); imshow(Dn_h2); title("Imagen Filtro H2")
Dn_h3=uint8(filter2(h3,Dn,"valid"));
subplot(3,3,9); imshow(Dn_h3); title("Imagen Filtro H3")

En_mov=movav(En,10,10);
figure
subplot(3,3,1); imshow(C); title("Imagen Original")
subplot(3,3,3); imshow(En); title("Imagen con Ruido Gaussiano")
subplot(3,3,4); imshow(En_mov); title("Imagen Filtro movav")
En_h1=uint8(filter2(h1,En,"valid"));
subplot(3,3,6); imshow(En_h1); title("Imagen Filtro H1")
En_h2=uint8(filter2(h2,En,"valid"));
subplot(3,3,7); imshow(En_h2); title("Imagen Filtro H2")
En_h3=uint8(filter2(h3,En,"valid"));
subplot(3,3,9); imshow(En_h3); title("Imagen Filtro H3")

medianafil=medfilt2(imgfilt,[3,3]);
figure
subplot(2,2,1); imshow(imgfilt); title("Imagen con ruido imp")
subplot(2,2,2); imshow(medianafil); title("Imagen con filtro mediana 3x3")
medianafil5=medfilt2(imgfilt,[5,5]);
subplot(2,2,3); imshow(imgfilt); title("Imagen con ruido imp")
subplot(2,2,4); imshow(medianafil5); title("Imagen con filtro mediana 5x5")