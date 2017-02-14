function [ mat ] = Daub_NonStandardComposition( mat )
    
    r = 4;
    c = 4;
    cols = size(mat,1);
    rows = size(mat,2);
	temp_row = zeros(1,rows);
	temp_col = zeros(1,cols);

	while (c <= cols || r <= rows)
        if r <= rows
            for i=1:1:c
                for j=1:1:rows
					temp_col(j) = mat(j,i);
                end
                
                %temp_col
                
				vet = Daub_CompositionStep(temp_col, r);
                
                vet
                
                for j=1:1:rows
					mat(j,i) = vet(j);
                end
            end
            
        end

		if c <= cols
            for i=1:1:r
			
                for j=1:1:cols
					temp_row(j) = mat(i,j);
                end
                
                %temp_row
                
				vet = Daub_CompositionStep(temp_row, c);
                
                vet
                
                for j=1:1:cols
					mat(i,j) = vet(j);
                end
            end
        end
        
       
        
        if (c <= cols) 
            c = c * 2;
        end
        if (r <= rows) 
            r = r * 2;
        end
    end

end

