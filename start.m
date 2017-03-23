input = imread('kubrick.png');
ratio = 0.0050;

h1=subplot(2,4,1);imshow(input);title('Input');

x = double(input);

rc = Daub_NonStandardDecomposition(x(:,:,1));
gc = Daub_NonStandardDecomposition(x(:,:,2));
bc = Daub_NonStandardDecomposition(x(:,:,3));

h2=subplot(2,4,2);imshow(rc);title('Red');
h3=subplot(2,4,3);imshow(gc);title('Green');
h4=subplot(2,4,4);imshow(bc);title('Blue');

rc = compression(rc, ratio);
gc = compression(gc, ratio);
bc = compression(bc, ratio);

h5=subplot(2,4,5);imshow(rc);title('Compressed Red');
h6=subplot(2,4,6);imshow(gc);title('Compressed Green');
h7=subplot(2,4,7);imshow(bc);title('Compressed Blue');

rc = Daub_NonStandardComposition(rc);
gc = Daub_NonStandardComposition(gc);
bc = Daub_NonStandardComposition(bc);

x = cat(3,rc,gc,bc);

output = uint8(x);

h8=subplot(2,4,8);imshow(output);title('Output');

linkaxes([h1,h2,h3,h4,h5,h6,h7,h8]);%,h6]);

img_out = output;

%imwrite(input,'input.png');
imwrite(output,'output.png');


%err = immse(output,input)