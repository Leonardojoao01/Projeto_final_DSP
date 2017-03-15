ref = rgb2gray(imread('kubrick.png'));

input1 = rgb2gray(imread('output.png'));
input2 = rgb2gray(imread('haar.png'));

immse(input1, ref)
immse(input2, ref)

psnr(input1, ref)
psnr(input2, ref)
