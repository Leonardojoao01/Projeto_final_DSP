function [ S ] = energy( matrix )
%int main(int argc, char **argv)
    
    %s = struct('a',{},'b',{},'value',{})
    %///////////////////////// Alocando Arrays ////////////////////////////////
 
    %matrix = [];
    %map = struct('x',{},'y',{},'value',{},'abs',{});
    %mergeResult = struct('x',{},'y',{},'value',{},'abs',{});
    
    N = size(matrix,1);
    
    S=0;
    for i=1:N
        for j=1:N
            S = S + matrix(i,j)^2;
        end
    end
    
    %N = 4;
 
    %for i = 1:1:N
    %    for j = 1:1:N
    %%        matrix(i,j) = N * N - (i * N + j);
    %    end
    %end
    
    %///////////////////////// Configurando Mapeamento ////////////////////////
 
    %for i = 1:1:N
    %    for j = 1:1:N
    %        map(((i-1)*N) + j).x = i;
    %        map(((i-1)*N) + j).y = j;
    %        map(((i-1)*N) + j).value = matrix(i,j);
    %        map(((i-1)*N) + j).abs = abs(matrix(i,j));
    %    end
    %end
    
    %///////////////////////// Ordenando Mapeamento ///////////////////////////
    
    %[~,index]=sort([map.abs]);
    %mergeResult=map(index);
    %///////////////////////// Compressão /////////////////////////////////////

    %compressResult = compress(mergeResult, N*N, compressionRatio);
 
    %///////////////////////// Restaurando Matriz /////////////////////////////
 
    %for i = 1:1:N*N
    %    matrix(compressResult(i).x,compressResult(i).y) = compressResult(i).value;
    %end

end

