function [ vet ] = Daub_Composition( vet )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    s = 4;
    
    while s <= size(vet,2);
        vet = Daub_CompositionStep(vet, s);
        s = s*2;
    end
    
    
end

