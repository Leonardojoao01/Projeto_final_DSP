function [ vet ] = Daub_Decomposition( vet )

    s = size(vet,2);
    
    while s >= 4
        vet = Daub_DecompositionStep(vet, s);
        s = s/2;
    end
end

