function [ matrix ] = compression( matrix, compressionRatio )
%int main(int argc, char **argv)
    
    %s = struct('a',{},'b',{},'value',{})
    %///////////////////////// Alocando Arrays ////////////////////////////////
 
    %matrix = [];
    map = struct('x',{},'y',{},'value',{});
    mergeResult = struct('x',{},'y',{},'value',{});
    
    N = size(matrix,1);
    %N = 4;
 
    %for i = 1:1:N
    %    for j = 1:1:N
    %%        matrix(i,j) = N * N - (i * N + j);
    %    end
    %end
    
    %///////////////////////// Configurando Mapeamento ////////////////////////
 
    for i = 1:1:N
        for j = 1:1:N
            map(((i-1)*N) + j).x = i;
            map(((i-1)*N) + j).y = j;
            map(((i-1)*N) + j).value = matrix(i,j);
        end
    end
    
    %///////////////////////// Ordenando Mapeamento ///////////////////////////
    
    [~,index]=sort([map.value]);
    mergeResult=map(index);
    %///////////////////////// Compressão /////////////////////////////////////

    compressResult = compress(mergeResult, N*N, compressionRatio);
 
    %///////////////////////// Restaurando Matriz /////////////////////////////
 
    for i = 1:1:N*N
        matrix(compressResult(i).x,compressResult(i).y) = compressResult(i).value;
    end

end

