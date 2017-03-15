ratio = 0.00500;
dif = 1;
while (dif ~= 0)
  
    img_out = comp( ratio );

    [ juca1_1, juca2_1, dif ] = teste_energia();

    ratio
    juca1_1
    juca2_1
    dif
    
    if (dif > 60000)
        ratio = ratio+0.00150;
    elseif (dif > 6000 && dif < 60000)
        ratio = ratio+0.00050;
    elseif (dif > 600 && dif < 6000)
        ratio = ratio+0.00010;
    elseif (dif > 0 && dif < 600)
        ratio = ratio+0.00001;
    
    elseif (dif < -60000)
        ratio = ratio-0.00150;
    elseif (dif < -6000 && dif > -60000)
        ratio = ratio-0.00050;
    elseif (dif < 600 && dif > 6000)
        ratio = ratio-0.00010;
    elseif (dif < 0 && dif > 600)
        ratio = ratio-0.00001;
    end
end
