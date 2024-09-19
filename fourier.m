close all
clear
I= imread('https://img.pixers.pics/pho_wat(s3:700/FO/34/55/86/32/700_FO34558632_02c89f6d7855e0a99f7dc647b40184aa.jpg,700,646,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,596,jpg)/vinilos-paisaje-marino-australiano-al-amanecer-en-formato-cuadrado.jpg.jpg');
[r,c,i]=size(I);
if i>1
    %% Asegurar trabajar en escala de grises
    I=rgb2gray(I);
end

figure, imshow(I); title('Imagen original (I)');
I=double(I);
%% Para qué sirve parámetro m?

m=1200;
%% Para qué sirve fft2?
% Si X es un arreglo multidimensional, fft2 adopta la
% transformada en 2D de cada dimensión superior a 2. La salida Y tiene el mismo tamaño que X.
If=fft2(I,m,m);
figure, imshow(uint8(abs(If))); title('uint8(fft(I)) TF de Imagen')
%% Cuál es el propósito de calcular el logaritmo de la amplitud de la imagen
%% en frecuencia ?
Ifm=log(abs(If)+1);
figure, imshow(Ifm,[]); title('Log de Magnitud de TF de Imagen')
%% Qué hace fftshift?
Ifm=fftshift(Ifm);
figure, imshow(Ifm,[]); title('Log de Magnitud de Imagen con Frec. Bajas centradas');
%% If es la imagen recuperada en el dominio espacial, pero tiene números
%% imaginarios, por lo cual, hay que eliminarlos con "real" o bien, con
%% con el valor absoluto "abs"
It=real(ifft2(If));
figure, imshow(I), title('Imagen original');
subplot(1,2,1), imshow(uint8(It)), title('Imagen de F-T')
subplot(1,2,2), imshow(uint8(It(1:r,1:c))), title('Imagen de F-T recortada');