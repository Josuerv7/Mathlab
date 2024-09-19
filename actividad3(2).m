
close all
clear all

%RGB=imread('https://arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/IDJLWRLGUJG23PK2X5OKS6NXCU.jpg');
RGB=imread('https://thumbs.dreamstime.com/b/color-verde-real-que-sorprende-del-lago-mountains-paisaje-natural-monta%C3%B1as-austria-viaje-europeo-tiempo-de-verano-143152552.jpg');
I_LAB=rgb2lab(RGB);

max_lum = 100;
I_LAB_L = I_LAB(:,:,1)/max_lum;
I_LAB_A=I_LAB;
I_LAB_A(:,:,1)=imadjust(I_LAB_L)*max_lum;
I_LAB_A=lab2rgb(I_LAB_A);

figure(1); subplot(1,3,1); imshow(RGB), title('Imagen RGB')
subplot(1,3,2);  imshow(I_LAB), title('Imagen LAB')
subplot(1,3,3);  imshow(I_LAB_A), title('Imagen LAB-RGB Ajustada L')

I_LAB_HIST=I_LAB;
I_LAB_HIST(:,:,1)=histeq(I_LAB_L)*max_lum;
I_LAB_HIST=lab2rgb(I_LAB_HIST);

figure(2); 
subplot(2,2,1);  imshow(I_LAB_A), title('Imagen LAB-RGB Ajustada L')
subplot(2,2,2); imhist(I_LAB_A(:,:,1)), title('Histograma de Ec. de lum')
subplot(2,2,3);  imshow(I_LAB_HIST), title('Imagen LAB-RGB L-EC')
subplot(2,2,4); imhist(I_LAB_HIST(:,:,1)), title('Histograma de LAB-RGB L-EC')

I_LAB_ADH=I_LAB;
I_LAB_ADH(:,:,1)=adapthisteq(I_LAB_L)*max_lum;
I_LAB_ADH=lab2rgb(I_LAB_ADH);

figure(3); 
subplot(2,2,1);  imshow(I_LAB_HIST), title('Imagen LAB-RGB Ajustada L')
subplot(2,2,2); imhist(I_LAB_HIST(:,:,1)), title('Histograma de Ec. de lum')
subplot(2,2,3);  imshow(I_LAB_ADH), title('Imagen LAB-RGB Adap Ec L')
subplot(2,2,4); imhist(I_LAB_ADH(:,:,1)), title('Histograma de LAB-RGB Adap Ec L')