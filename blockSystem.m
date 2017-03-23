%ratio = 0.00750;
format long

dif = 1;


%ratio_min = 0.000001;
%ratio_max = 0.001000;

ratio = 0.0029;


%ratio_min = 0.0326001;
%ratio_max = 0.0327555;
while (dif ~= 0)
    
    %ratio = double((ratio_max + ratio_min)/2.0);
    img_out = comp( ratio );

    [ juca1_1, juca2_1, dif] = teste_energia();

    ratio
    dif
    
    if(dif > 0)
        ratio = ratio + 0.00004;
    else
        ratio = ratio - 0.000001;
    end
    
    
end
