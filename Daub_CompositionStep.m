function [ v ] = Daub_CompositionStep(v,n)
%function [ vet ] = Daub_CompositionStep(v,n)

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    half = n / 2; 
    denom = 4.0 * sqrt(2.0);
    result = zeros(1,length(n));
    
    a = v(half-1); 
    b = v(n-1); 
    c = v(1); %????
    d = v(half);
    
    t1 = c - a; 
    t2 = b - d; 
    
    %result(1) = uint8((c + d + v3*(a + b) + sqrt3*(t1 + t2)) / denom);
    %result(2) = unit8((a - b + v3*(c - d) + sqrt3*(t1 - t2)) / denom);
    
    result(1) = (c + d + (3*(a + b)) + (sqrt(3)*(t1 + t2))) / denom;
    result(2) = (a - b + (3*(c - d)) + (sqrt(3)*(t1 - t2))) / denom;
    
    %
    % loop aqui
    %
    j=3;
    for i=1:1:half-1
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
        
      
        result(j) = (c + d + (3*(a + b)) + (sqrt(3)*(t1 + t2))) / denom;
        j = j+1;
        result(j) = (a - b + (3*(c - d)) + (sqrt(3)*(t1 - t2))) / denom;
        j = j+1;

    end
    v(1:n) = result(1:n);
end

