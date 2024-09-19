close all
clear
I = imread("https://la.mathworks.com/help/examples/images/win64/NonuniformIlluminationExample_01.png");
I = imcrop(I);

se = strel('disk',15);
background = imopen(I,se);
imshow(background);
I2 = I - background;
imshow(I2);
I3 = imadjust(I2);
imshow(I3);
bw = imbinarize(I3);
bw = bwareaopen(bw,50);
figure
imshow(bw);

cc = bwconncomp(bw,4);
cc.NumObjects;
grain = false(size(bw));
grain(cc.PixelIdxList{50}) = true;
figure
imshow(grain);
labeled = labelmatrix(cc);
whos labeled;
RGB_label = label2rgb(labeled,'spring','c','shuffle');
figure
imshow(RGB_label);

