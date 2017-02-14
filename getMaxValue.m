function [ maxValue ] = getMaxValue( v,  n )
    if (exist('v','var')==0)
        maxValue = 0;
        return;
    end
 
    maxValue = v(1).value;
 
    for i = 1:1:n
        if (v(i).value > maxValue)
            maxValue = v(i).value;
        end
    end
end

