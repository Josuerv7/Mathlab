%Declaramos nuestras imagenes. 
Escena = imread('Tronco.jpg');
Interes = imread('Obj_Mar.jpg');

%imshow(Interes);
EscenaG = rgb2gray(Escena);
InteresG = rgb2gray(Interes);

% Paso 1. Calcular la transformada de Fourier de la escena I(x,y) y del objeto de interés T(x,y).

f_escena = fft2(EscenaG);
f_interes = fft2(InteresG);

% Paso 2. Calcular el complejo conjugado del objeto de interés T*(x,y), que corresponde precisamente al filtro de correspondencia.

f_conjugado = conj(f_interes);

% Paso 3. Calcular la correlación a partir de la multiplicación punto a punto [C(u,v)=I(u,v).*T(u,v)].

correlacion = f_escena .* f_conjugado;

% Paso 4. Calcular el plano de correlación en el dominio del tiempo. Recordar la aplicación de ifft2 a la variable C(u,v). Nota: Determinar si se requiere aplicar "fftshift" paraacomodar los cuadrantes del plano de correlación C(x,y).

plano_c = ifft2(correlacion);
plano_correlacion = fftshift(plano_c);

% Paso 5. Para visualizar adecuadamente el plano de correlación C(x,y) utilizar: imshow(real(C),[])

%figure(1);
%imshow(real(plano_correlacion), []);
%title('Plano de correlación');

% Paso 6. Sobre el plano hay que buscar los valores más altos, los cuales indicarán lalocalización del objeto detectado en la escena.
%================= valor mas alto (fijo)

% Encontrar el valor máximo en la matriz
%%%valor_maximo = max(plano_correlacion(:));

% Establecer los elementos que no sean iguales al valor máximo en 0
%%%matriz_resultante = plano_correlacion;
%%%matriz_resultante(matriz_resultante ~= valor_maximo) = 0;

%================= rango de valores mas altos

% Encontrar los valores máximos en la matriz (rango)
valores_maximos = maxk(plano_correlacion(:), 200);

% Establecer los elementos que no estén en los valores máximos en 0
spot = plano_correlacion;
spot(~ismember(spot, valores_maximos)) = 0;

% Mostrar elementos

figure(1);
imshow(EscenaG);
title('Escena Escala de grises');

figure(2);
imshow(InteresG);
title('Objeto de interes');

figure(3);
imshow(f_escena);
title('transformada escena');

figure(4);
imshow(f_interes);
title('transformada interes');

figure(5);
imshow(f_conjugado);
title('complejo conjugado');

figure(6);
imshow(correlacion);
title('correlacion');

figure(7);
imshow(real(plano_c), []);
title('plano de correlacion');

figure(8);
imshow(real(plano_correlacion), []);
title('plano de correlacion fftshift');

figure(9);
imshow(spot);
title('Posibles lugares en donde se encuentra el objeto');