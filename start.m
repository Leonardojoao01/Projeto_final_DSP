x = imread('kubrick.png');
x = rgb2gray(x);
h1=subplot(2,3,1);imshow(x);title('Original (uint8)');

x2 = double(x);

h2=subplot(2,3,2);imshow(uint8(x2));title('Double');

normalized = Daub_NonStandardDecomposition(x2);

h3=subplot(2,3,3);imshow(normalized);title('Normalized');

compressed = compression( normalized, 0.001 );

h4=subplot(2,3,4);imshow(uint8(compressed));title('Compressed');

nonNormalized2 = Daub_NonStandardComposition( compressed );

h5=subplot(2,3,5);imshow(uint8(nonNormalized2));title('nonNormalized2 (double) / From normalized');

u8 = uint8(nonNormalized2);

h6=subplot(2,3,6);imshow(u8);title('nonNormalized2 (uint8)');


linkaxes([h1,h2,h3,h4,h5,h6]);

imwrite(x,'input.png');
imwrite(u8,'output.png');
