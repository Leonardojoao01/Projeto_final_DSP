function [ result ] = Daub_Composition( vet )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    resultparc = zeros(vet:1);
    result = zeros(vet:1):zeros(vet:1);
    n = size(vet,1);

    for i=1:size(vet,1)
        resultparc = Daub_CompositionStep(vet(i,:), n);
        
        for j=1:size(vet,1)
            result(i,j) = resultparc(j); 
        end
    end
end

