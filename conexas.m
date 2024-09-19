matriz = [0,1,1,0,0,0,1,1,0,0;
          1,0,0,1,0,1,0,0,0,0;
          1,0,0,1,1,1,0,0,0,0;
          0,0,1,1,1,0,0,0,0,0;
          0,0,1,0,1,0,0,1,1,0;
          0,0,1,1,1,0,0,1,1,0;
          0,0,0,0,0,0,1,0,1,0;
          1,0,0,0,0,1,0,0,0,0];

[filas, columnas] = size(matriz); 
num_filas = filas(1); 

matrizetiq = [0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0; 
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0];


c=0;
for i = 1:num_filas
  for j = 1:columnas
    %valor = matriz(i,j);
       
        if(matriz(i==1 & j==1))
            c=c+1;
            matriz(i,j) = c;
            
        elseif (matriz(i==1))
                % matriz(i,j-1) = c;
                if matriz(i,j-1)
                    matrizetiq(i,j) = matriz(i,j-1);
                else
                    c= c+1;
                    matrizetiq(i,j) = c;
                end
        elseif (matriz(j==1))
                matriz(i-1,j) = c;
        % elseif  matriz(i,j)
        %     c= c+1;
        %     else
        %     c=0;
        % end
        end
   
        matrizetiq(i,j) = c;
  end
end
  