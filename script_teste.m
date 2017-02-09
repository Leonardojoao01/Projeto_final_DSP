%img = imread('mario.jpg');
%s = im2double('mario.jpg');
%s = double(s);
%s = s(1:1:4);
n = 16;
s = zeros(n,1);
teste = zeros(n:1):zeros(n:1);

%for i=1:size(s,1)
for i=1:10
    %juca = double(s);
    %juca(1) = 9.0;
    %juca(2) = 7.0;
    %juca(3) = 15.0;
    %juca(4) = 2.0;
    
    juca = [7.0  6.0  9.0  3.0  1.0  15.0  10.0  12.0  9.0  13.0  10.0  11.0  2.0  11.0  3.0  6.0];
    result = Daub_CompositionStep(juca, n);
    
    for j=1:1:16 
        teste(i,j) = result(j); 
    end; 

    %teste = Daub_CompositionStep(juca, n);
end;