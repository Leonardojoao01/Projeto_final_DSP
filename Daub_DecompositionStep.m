function [ result ] = Daub_DecompositionStep( vet, n )
    i=1;
    j=1;
    result = zeros(1,length(n));
    half = n/2;
    while j<=n-3
        a = vet(j);
        b = vet(j+1);
        c = vet(j+2);
        d = vet(j+3);
        
        t1 = a - c;
        t2 = b - d;
        
        result(i) = (a + d + 3*(b + c) + sqrt(3)*(t1 + t2)) / (4*sqrt(2));
        result(i+half) = (a - d + 3*(c - b) + sqrt(3)*(t2 - t1)) / (4*sqrt(2));
        
        j = j+2;
        i = i+1;
    end
    
    a = vet(n-1);
    b = vet(n);
    c = vet(0);
    d = vet(1);
    
    t1 = a - c;
    t2 = b - d;
    
    result(i) = (a + d + 3*(b + c) + sqrt(3)*(t1 + t2)) / (4*sqrt(2));
    result(i+half) = (a - d + 3*(c - b) + sqrt(3)*(t2 - t1)) / (4*sqrt(2));
    
end

