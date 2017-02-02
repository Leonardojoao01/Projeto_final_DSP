function [ a,b ] = sortc( a,b,low,high )
%void sort(MatrixMap *a, MatrixMap *b, uint low, uint high)
 
    if (low < high)
        mid = (low + high) / 2;
        [a,b] = sortc(a, b, low, mid);
        [a,b] = sortc(a, b, mid + 1, high);
        [a,b] = merging(a, b, low, mid, high);
    else
        return;
    end

end

