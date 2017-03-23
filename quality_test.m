ref = rgb2gray(imread('mario.jpg'));

%input1 = rgb2gray(imread('output.png'));
%input2 = rgb2gray(imread('haar.png'));
input1 = imread('output.png');
input2 = imread('haar.png');

immse(input1, ref)
immse(input2(:,:,1), ref)

psnr(input1, ref)
psnr(input2(:,:,1), ref)
