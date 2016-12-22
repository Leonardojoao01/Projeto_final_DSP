function [ mat ] = Daub_NonStandardDecomposition( mat, rows, cols )

    h = rows;
    w = cols;
	temp_row = zeros(1,cols);
	temp_col = zeros(1,rows);

	while (w >= 4 || h >= 4)
        if w >= 4
            for i=1:1:h
                for j=1:1:w
					temp_row(j) = mat(i,j);
                end
                
				vet = Daub_DecompositionStep(temp_row, w);
                
                for j=1:1:w
					mat(i,j) = vet(j);
                end
            end
        end

		if h >= 4
            for i=1:1:w
			
                for j=1:1:h
					temp_col(j) = mat(j,i);
                end
                
				vet = Daub_DecompositionStep(temp_col, h);
                
                for j=1:1:h
					mat(j,i) = vet(j);
                end
            end
        end
        
        if (w >= 4) 
            w = w / 2; 
        end
        if (h >= 4) 
            h = h / 2; 
        end
    end

end

