close all
clear
Img=imread("https://definicionde.hugex.net/wp-content/uploads/2015/07/e1001e86903d5fccba2a7e83a0547bd4.jpg"); %Imagen tomada con mi familia..
Red=Img(:,:,1); Green=Img(:,:,2); Blue=Img(:,:,3);
rojo = ecualizar (Red); verde = ecualizar (Green); azul = ecualizar(Blue);
Ecualizada=cat(3,rojo,verde,azul);
figure
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Ecualizada), title("b) Imagen RGB Ecualizada");

YCbCr= rgb2ycbcr(Img);
Red=YCbCr(:,:,1); Green=YCbCr(:,:,2); Blue=YCbCr(:,:,3);
rojo = ecualizar (Red); verde = ecualizar (Green); azul = ecualizar(Blue);
YCbCrEcu2= cat(3,Red,verde,azul);
Imgycbr2= ycbcr2rgb(YCbCrEcu2);
figure(2)
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Imgycbr2), title("b) Imagen CbCr Ecualizada");

YCbCrEcu3= cat(3,rojo,Green,Blue);
Imgycbr3= ycbcr2rgb(YCbCrEcu3);
figure(3)
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Imgycbr3), title("b) Imagen Y Ecualizada");

YCbCrEcu= cat(3,rojo,verde,azul);
Imgycbr= ycbcr2rgb(YCbCrEcu);
figure(4)
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Imgycbr), title("b) Imagen YCbCr Ecualizada");

hsv = rgb2hsv (Img);
Red=hsv(:,:,1); Green=hsv(:,:,2); Blue=hsv(:,:,3);
azul = histeq(Blue);
hsvEcu= cat(3,Red,Green,azul);
Imghsv = hsv2rgb (hsvEcu);
figure
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Imghsv), title("b) Imagen V Ecualizada");

rojo=histeq(Red);
verde=histeq(Green);
hsvEcu= cat(3,rojo,verde,Blue);
Imghsv = hsv2rgb (hsvEcu);
figure
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Imghsv), title("b) Imagen HS Ecualizada");

rojo=histeq(Red);
verde=histeq(Green);
azul=histeq(Blue);
hsvEcu= cat(3,rojo,verde,azul);
Imghsv = hsv2rgb (hsvEcu);
figure
subplot(1,2,1), imshow(Img), title("a) Imagen Original");
subplot(1,2,2), imshow(Imghsv), title("b) Imagen HSV Ecualizada");