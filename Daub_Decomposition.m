function [ vet ] = Daub_Decomposition( vet )

    s = 4;%size(vet,1);
    
    while s <= size(vet,1)
        vet = Daub_DecompositionStep(vet, s);
        s = s*2;
    end
end

