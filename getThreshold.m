function [ threshold ] = getThreshold( v,n, ratio )
%T getThreshold(MatrixMap *v, uint n, double ratio)

    totalEnergy = 0;
    tMin = getMinValue(v, n);
    tMax = getMaxValue(v, n);
 
    if (ratio > 1.0) 
        ratio = 1.0;
    elseif (ratio < 0.0) 
        ratio = 0.0;
    end
 
    for i = 0:1:n
        %verificar
        totalEnergy = totalEnergy + (v(i).value.^2);
    end
 
    error = totalEnergy * ratio;
    
    while ((tMax - tMin) > 0.001)
        threshold = (tMax + tMin) / 2;
        totalEnergy = 0;
 
        for i = 0:1:n
            if (v(i).value < threshold)
                totalEnergy = totalEnergy + (v(i).value).^2;
            else
                return;
            end
        end
 
        if (totalEnergy < error)
            tMin = threshold;
        else
            tMax = threshold;
        end
    end
 
end

