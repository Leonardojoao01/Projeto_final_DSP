function [ mergeResult ] = compression( ~ )
%int main(int argc, char **argv)
    
    %s = struct('a',{},'b',{},'value',{})
    %///////////////////////// Alocando Arrays ////////////////////////////////
 
    %matrix = [];
    map = struct('x',{},'y',{},'value',{});
    mergeResult = struct('x',{},'y',{},'value',{});
 
    for i = 1:1:N
        for j = 1:1:N
            matrix(i,j) = N * N - (i * N + j);
        end
    end
 
    %///////////////////////// Configurando Mapeamento ////////////////////////
 
    for i = 1:1:N
        for j = 1:1:N
            map((i*N) + j).x = i;
            map((i*N) + j).y = j;
            map((i*N) + j).value = matrix(i,j);
        end
    end
 
    %///////////////////////// Ordenando Mapeamento ///////////////////////////
 
    [map,mergeResult] = sort(map, mergeResult, 0, N*N-1);
 
    %///////////////////////// Compressão /////////////////////////////////////
 
    compress(map, N*N, COMPRESS_RATIO);
 
    %///////////////////////// Restaurando Matriz /////////////////////////////
 
    for i = 0:1:N*N
        matrix(map(i).x,map(i).y) = map(i).value;
    end

end

