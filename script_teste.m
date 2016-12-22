%img = imread('mario.jpg');
%s = im2double('mario.jpg');
%s = double(s);
%s = s(1:1:4);
n = 4;
s = zeros(n,1);

for i=1:size(s,1)
    juca = double(s);
    juca(1) = 9.0;
    juca(2) = 7.0;
    juca(3) = 15.0;
    juca(4) = 2.0;
    result = Daub_CompositionStep(juca, n);
end;