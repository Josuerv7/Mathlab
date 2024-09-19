close all
clear
paisaje=imread("https://2.bp.blogspot.com/-_aM3HGeF9LE/VAc13tw8tfI/AAAAAAACTXg/G7hT9FDFwTo/s1600/paisajes%2Bnaturales%2B-%2Bnaturaleza%2B-%2Bnatural%2Bfree%2Blandscapes%2B-%2Bfotos%2Bde%2Bpaisajes%2B(5).jpg");
paisaje=paisaje(1:1024,1:1189,1:3);
I= imread("https://th.bing.com/th/id/R.bb4a9a95cb754ba0bbdee29c8ae67d33?rik=rtHLACX2xHyLmQ&pid=ImgRaw&r=0");
F=paisaje(1:1024,1:1189,1:3);
figure, title('Imágenes Originales')
subplot(1,2,1), imshow(F); title('Imagen Original')
subplot(1,2,2), imshow(I); title('Imagen Original')

Fc=imcrop(F,[20,20,511,511]); %size 512x512
[filas, columnas, otro]=size(Fc);
I=imresize(I,[filas,columnas]);
figure
subplot(1,2,1), imshow(Fc); title('Imagen recortada del fondocon imcrop')

[rF,cF]=size(F);
[rI,cI,i]=size(I);
figure, imshow(I)
circ=drawcircle;

rad=fix(circ.Radius);
rfb=fix(circ.Center(1));
cfb=fix(circ.Center(2));

cb=fspecial('gaussian',2*rad,60);
%cb=fspecial('disk',rad);

[rcb,ccb]=size(cb);
cb=cb/max(max(cb));
fb=zeros(rI,cI);

fb(rfb-rad:(rfb-rad)+rcb-1,cfb-rad:(cfb-rad)+rcb-1)=cb;
Ifb=imcomplement(fb);

for i=1:3
    Ifs(:,:,i)=double(I(:,:,i)).*fb;
    Ffs(:,:,i)=double(Fc(:,:,i)).*Ifb;
end
Ifc=cat(3,Ifs(:,:,1),Ifs(:,:,2),Ifs(:,:,3));
figure, imshow(uint8(Ifc))

Ffc=cat(3,Ffs(:,:,1),Ffs(:,:,2),Ffs(:,:,3));
figure, imshow(uint8(Ffc))

figure, imshow(uint8(Ffc+Ifc))