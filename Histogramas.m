close all
clear
Imagen=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0"); %Imagen tomada con mi familia..
subplot(2,2,1);
imshow(Imagen);
title("Imagen Original")
subplot(2,2,2);
imhist(Imagen);
title("Histograma Original")
ImagenMod=Imagen-100;
subplot(2,2,3);
imshow(ImagenMod);
title("Imagen Modificada")
subplot(2,2,4);
imhist(ImagenMod);
title("Histograma Modificado(-100)")

figure(2)
Imagen=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0"); %Imagen tomada con mi familia..
subplot(2,2,1);
imshow(Imagen);
title("Imagen Original")
subplot(2,2,2);
imhist(Imagen);
title("Histograma Original")
ImagenMod=Imagen+100;
subplot(2,2,3);
imshow(ImagenMod);
title("Imagen Modificada")
subplot(2,2,4);
imhist(ImagenMod);
title("Histograma Modificado(+100)")

figure(2)
Imagen=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0"); %Imagen tomada con mi familia..
subplot(2,2,1);
imshow(Imagen);
title("Imagen Original")
subplot(2,2,2);
imhist(Imagen);
title("Histograma Original")
ImagenMod=Imagen+100;
subplot(2,2,3);
imshow(ImagenMod);
title("Imagen Modificada")
subplot(2,2,4);
imhist(ImagenMod);
title("Histograma Modificado(+100)")

figure(3)
Imagen=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0"); %Imagen tomada con mi familia..
subplot(2,2,1);
imshow(Imagen);
title("Imagen Original")
subplot(2,2,2);
imhist(Imagen);
title("Histograma Original")
ImagenMod=Imagen/2;
subplot(2,2,3);
imshow(ImagenMod);
title("Imagen Modificada")
subplot(2,2,4);
imhist(ImagenMod);
title("Histograma Modificado(/2)")

figure(4)
Imagen=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0"); %Imagen tomada con mi familia..
subplot(2,2,1);
imshow(Imagen);
title("Imagen Original")
subplot(2,2,2);
imhist(Imagen);
title("Histograma Original")
ImagenMod=Imagen*2;
subplot(2,2,3);
imshow(ImagenMod);
title("Imagen Modificada")
subplot(2,2,4);
imhist(ImagenMod);
title("Histograma Modificado(*2)")

figure(5)
m=1.5;
b=-15;
Imagen=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0"); %Imagen tomada con mi familia..
subplot(2,2,1);
imshow(Imagen);
title("Imagen Original")
subplot(2,2,2);
imhist(Imagen);
title("Histograma Original")
ImagenMod=m*Imagen+b;
subplot(2,2,3);
imshow(ImagenMod);
title("Imagen Modificada")
subplot(2,2,4);
imhist(ImagenMod);
title("Histograma Modificado(mI+b)")

