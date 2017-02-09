function [ minValue ] = getMinValue( v, n )
%T getMinValue(MatrixMap *v, uint n)
    if (exist('v','var')==0)
        minValue = 0;
        return;
    end
 
    minValue = v(0).value;
 
    for i = 0:1:n
        if (v(i).value < minValue)
            minValue = v(i).value;
        end
    end
end

