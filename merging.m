function [ a,b ] = merging( a, b, low, mid, high )
%void merging(MatrixMap *a, MatrixMap *b, uint low, uint mid, uint high)

    l1=low;
    l2=mid+1;
    i=low;
    
    while l1 <= mid && l2 <= high
    %for (l1 = low, l2 = mid + 1, i = low; l1 <= mid && l2 <= high; i++)
        if (a(l1).value <= a(l2).value)
            b(i) = a(l1);
            l1 = l1+1;
        else
            b(i) = a(l2);
            l2 = l2+1;
        end
    end
 
    while (l1 <= mid)
        b(i) = a(l1);
        i=i+1;
        l1=l1+1;
    end
 
    while (l2 <= high)
        b(i) = a(l2);
        i=i+1;
        l2=l2+1;
    end
 
    for i = low:1:high
        a(i) = b(i);
    end

end

