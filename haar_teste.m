input = imread('kubrick.png');
[CR,BPP] = wcompress('c',input,'haar_out.png','ezw','maxloop',9,'wname','haar');
Xc = wcompress('u', 'haar_out.png');
colormap(pink(255))
imshow(Xc);
CR

imwrite(Xc,'haar.png');