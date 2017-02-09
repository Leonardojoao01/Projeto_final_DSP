function [ maxValue ] = getMaxValue( v,  n )
%T getMaxValue(MatrixMap *v, uint n)
    if (exist('v','var')==0)
        maxValue = 0;
        return;
    end
 
    maxValue = v(0).value;
 
    for i = 0:1:n
        if (v(i).value > maxValue)
            maxValue = v(i).value;
        end
    end
end

