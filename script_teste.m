s = imread('mario.jpg');
%s = im2double('mario.jpg');
%s = double(s);
s = s(:,:,1);


for i=1:size(s,1)
    for j=1:size(s,2)
        juca(j) = s(i,j);
    end;
    jin = 20.0;
    juca = double(juca);
    [result] = Daub_CompositionStep(juca, jin);
end;