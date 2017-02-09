function [ vet ] = Daub_Composition( vet )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    s = size(vet,2);
    
    while s <= 4
        vet = Daub_CompositionStep(vet, s);
        s = s*2;
    end
    
    
end

