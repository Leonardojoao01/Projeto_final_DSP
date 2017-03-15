function [ juca1_1, juca2_1, dif ] = teste_energia()

input1 = imread('output.png');
input2 = imread('haar.png');


A = double(rgb2gray(input1));
B = double(rgb2gray(input2));


juca1_1 = energy(A);
juca2_1 = energy(B);

dif = juca1_1 - juca2_1;



