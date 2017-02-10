function [ v ] = Daub_CompositionStep(v,n)
%function [ vet ] = Daub_CompositionStep(v,n)

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    half = n / 2; 
    denom = 4.0 * sqrt(2.0);
    result = zeros(1,length(n));
    
    a = v(half); 
    b = v(n); 
    c = v(1);
    d = v(half+1);
    
    t1 = c - a; 
    t2 = b - d; 
    
    %result(1) = uint8((c + d + (3*(a + b)) + (sqrt(3)*(t1 + t2))) / denom)
    %result(2) = uint8((a - b + (3*(c - d)) + (sqrt(3)*(t1 - t2))) / denom)
    
    result(1) = (c + d + (3*(a + b)) + (sqrt(3)*(t1 + t2))) / denom
    result(2) = (a - b + (3*(c - d)) + (sqrt(3)*(t1 - t2))) / denom
    
    %
    % loop aqui
    %
    j=3;
    for i=1:1:half
        offset1 = v(i);
        offset2 = v(half+i);
        
        a = double(offset1);
        b = double(offset2);
        c = double(offset1+1);
        d = double(offset2+1);
        
        t1 = c - a;
        t2 = b - d;
        
      
        result(j) = (c + d + (3*(a + b)) + (sqrt(3)*(t1 + t2))) / denom;
        j = j+1;
        result(j) = (a - b + (3*(c - d)) + (sqrt(3)*(t1 - t2))) / denom;
        j = j+1;

    end
    v(1:n) = result(1:n);
end

