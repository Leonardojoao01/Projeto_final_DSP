function [ v ] = compress( v,n,ratio )
    threshold = getThreshold(v, n, ratio);
 
    for i = 1:1:n
        if (v(i).abs < threshold)
            v(i).value = 0;        
        else
            break;
        end
    end
end

