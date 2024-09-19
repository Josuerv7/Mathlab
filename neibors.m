matriz = [0,0,0,0,0,0,1,1,0,0;
          1,0,0,1,0,1,0,0,0,0;
          1,0,0,1,1,1,0,0,0,0;
          0,0,1,1,1,0,0,0,0,0;
          0,0,1,0,1,0,0,1,1,0;
          0,0,1,1,1,0,0,1,1,0;
          0,0,0,0,0,0,1,0,1,0;
          1,0,0,0,0,1,0,0,0,0];

[filas, columnas] = size(matriz); 
num_filas = filas; 

matrizetiq = [0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0; 
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0];

c = 0;
for i = 1:num_filas
  for j = 1:columnas
    if matriz(i, j) == 1 
      if i == 1 && j == 1
        c = c + 1;
        matrizetiq(i, j) = c;
      elseif i == 1
        if matrizetiq(i, j - 1) ~= 0
          matrizetiq(i, j) = matrizetiq(i, j - 1);
          
        else
          c = c + 1;
          matrizetiq(i, j) = c;
        end
      elseif j == 1
        if matrizetiq(i - 1, j) ~= 0 
          matrizetiq(i, j) = matrizetiq(i - 1, j);
          elseif matrizetiq(i - 1, j) > c
               matrizetiq(i - 1, j) = c-1; 
        
        else
          c = c + 1;
          matrizetiq(i, j) = c;
        end
      else
        if matrizetiq(i, j - 1) ~= 0
          matrizetiq(i, j) = matrizetiq(i, j - 1);
        elseif matrizetiq(i, j - 1) > c
               matrizetiq(i, j - 1) = c-1; 

        elseif matrizetiq(i - 1, j) ~= 0
          matrizetiq(i, j) = matrizetiq(i - 1, j);
        else
          c = c + 1;
          matrizetiq(i, j) = c;
        end
      end
    end
  end
end

matrizetiq