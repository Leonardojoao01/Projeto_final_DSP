function [ result ] = Daub_Decomposition( vet )

    [m,s] = size(vet);
    result = zeros(1,length(s));
    
    while s >= 4
        vet = Daub_DecompositionStep(vet, s)
        s = s/2;
    end
    
    result = vet
end

