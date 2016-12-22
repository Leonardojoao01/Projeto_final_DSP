function [ result ] = Daub_CompositionStep(v,n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    v3 = 3.0;
    sqrt3 = sqrt(3.0);
    
    half = n / 2; 
    denom = 4.0 * sqrt(2.0);
    result = zeros(n,1);
    
    a = v(half + 1); 
    b = v(n); 
    c = v(1); %????
    d = v(half);
    
    t1 = c - a; 
    t2 = b - d; 
    
    %result(0) = uint8((c + d + v3*(a + b) + sqrt3*(t1 + t2)) / denom);
    %result(1) = unit8((a - b + v3*(c - d) + sqrt3*(t1 - t2)) / denom);
    
    juca1 = (c + d + v3*(a + b) + sqrt3*(t1 + t2)) / denom;
    juca2 = (a - b + v3*(c - d) + sqrt3*(t1 - t2)) / denom;
    
    result(1) = uint8(juca1);
    result(2) = uint8(juca2);
    
    %
    % loop aqui
    %
end

