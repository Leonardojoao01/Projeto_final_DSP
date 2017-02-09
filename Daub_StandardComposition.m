function [ result ] = Daub_StandardComposition( mat )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    temp_col = zeros(mat:1);
    temp_linha = zeros(mat:1);
    %result = zeros(mat:1):zeros(mat:1);

    for i=1:size(mat,1)
           
        for j=1:size(mat,1)
            temp_col(j) = mat(j,i);
        end
            
        temp_col = Daub_Composition(temp_col);
            
        for j=1:size(mat,1)
            result(j,i) = temp_col(j);
        end
    end
    
    
    for i=1:size(mat,1)
           
        for j=1:size(mat,1)
            temp_linha(j) = mat(i,j);
        end
            
        temp_linha = Daub_Composition(temp_linha);
            
        for j=1:size(mat,1)
            result(i,j) = temp_linha(j);
        end
    end
    

end

