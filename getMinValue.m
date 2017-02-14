function [ minValue ] = getMinValue( v, n )
    if (exist('v','var')==0)
        minValue = 0;
        return;
    end
 
    minValue = v(1).value;
 
    for i = 1:1:n
        if (v(i).value < minValue)
            minValue = v(i).value;
        end
    end
end

