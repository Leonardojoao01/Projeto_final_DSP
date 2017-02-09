function [ v ] = compress( v,n,ratio )
%void compress(MatrixMap *v, uint n, double ratio)

    threshold = getThreshold(v, n, ratio);
 
    for i = 0:1:n
        if (v(i).value < threshold)
            v(i).value = T(0);        
        else
            break;
        end
    end
end

