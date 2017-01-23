function [ result ] = Daub_CompositionStep(v,n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    v3 = 3.0;
    sqrt3 = sqrt(3.0);
    
    half = n / 2; 
    denom = 4.0 * sqrt(2.0);
    result = zeros(n,1);
    
    a = double(v(half-1)); 
    b = double(v(n-1)); 
    c = double(v(1)); %????
    d = double(v(half));
    
    t1 = c - a; 
    t2 = b - d; 
    
    %result(1) = uint8((c + d + v3*(a + b) + sqrt3*(t1 + t2)) / denom);
    %result(2) = unit8((a - b + v3*(c - d) + sqrt3*(t1 - t2)) / denom);
    
    juca1 = (c + d + v3*(a + b) + sqrt3*(t1 + t2)) / denom;
    juca2 = (a - b + v3*(c - d) + sqrt3*(t1 - t2)) / denom;
    
    result(1) = uint8(juca1);
    result(2) = uint8(juca2);
    
    %
    % loop aqui
    %
    j=3;
    for i=1:half-1
        offset1 = v(i);
        offset2 = v(half+i);
        
        a = double(offset1);
        b = double(offset2);
        c = double(offset1+1);
        d = double(offset2+1);
        %offset1 = offset1 +1;
        %offset2 = offset2 +1;
        
        t1 = c - a;
        t2 = b - d;
        
      
        result(j) = uint8((c + d + v3*(a + b) + sqrt3*(t1 + t2)) / denom);
        j = j+1;
        result(j) = uint8((a - b + v3*(c - d) + sqrt3*(t1 - t2)) / denom);
        j = j+1;

    end;
end

