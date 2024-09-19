clear
close all
paisaje=imread("https://2.bp.blogspot.com/-_aM3HGeF9LE/VAc13tw8tfI/AAAAAAACTXg/G7hT9FDFwTo/s1600/paisajes%2Bnaturales%2B-%2Bnaturaleza%2B-%2Bnatural%2Bfree%2Blandscapes%2B-%2Bfotos%2Bde%2Bpaisajes%2B(5).jpg");
rostro=imread("https://th.bing.com/th/id/R.bb4a9a95cb754ba0bbdee29c8ae67d33?rik=rtHLACX2xHyLmQ&pid=ImgRaw&r=0");
escalagris=imread("https://th.bing.com/th/id/R.c85c516e9627c810377d8a6779f2fba2?rik=XB5tU%2fdbzNhn6g&pid=ImgRaw&r=0");

imshow(paisaje)
title("Paisaje")
figure(2)
imshow(rostro)
title("Rostro")
figure(3)
imshow(escalagris)
recorte=paisaje(1:1024,1:1189,1:3)/1.5;
montaje=recorte+(rostro/1.4);
figure(4)
title("Montaje")
subplot(1,3,1);
imshow(recorte);
subplot(1,3,2);
imshow(rostro);
subplot(1,3,3);
imshow(montaje);

figure(5)
imshow(recorte)

%[rF,cf]=size(paisaje)
%[rI,cI,I]
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
%recorte3=imcrop(paisaje,[0 0 1189 1024])/2;
%A=magic(4)
%I = rgb2gray(Paisaje) 
%size(rostro,3)
%[r,c,i]=size(rostro)
%figure(7)
%imcrop(paisaje)