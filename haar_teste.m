input = imread('kubrick.png');

gray = rgb2gray(input);

input(:,:,1) = gray;
input(:,:,2) = gray;
input(:,:,3) = gray;

%input = double(rgb2gray(input));

[CR,BPP] = wcompress('c',input,'haar_out.png','ezw','maxloop',9,'wname','haar');
CR
%BPP
Xc = wcompress('u', 'haar_out.png');
colormap(pink(255))
imshow(Xc);
%CR

imwrite(Xc,'haar.png');