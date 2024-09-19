clear
close all
%I=imread ("https://th.bing.com/th/id/R.2c8ff01ac54a1e5d3614d33a00d2e52c?rik=fA0%2fEvLC8qHitQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f-cIRPLMVGs4Y%2fTlPVTA0iitI%2fAAAAAAAALoA%2f2jpXsVlNvZE%2fs1600%2fPaisaje-Monta%252525C3%252525B1a-1600x1200_01.jpg&ehk=KMI0ZY7zN7Y6vPavewMPdfe6rtcRjRp0HxabwYBOfS8%3d&risl=&pid=ImgRaw&r=0");
%figure
A=[0,1,1,0,1,0;1,1,1,0,0,1;1,1,0,1,0,1;1,1,1,0,0,0;0,1,1,1,0,1;0,0,1,0,0,0];
B=[35,1,6,26,19,24;3,32,7,21,23,25;31,9,2,22,27,20;8,28,33,17,10,15;30,15,13,12,14,16;4,36,29,13,18,11];
matriz1=[0,1,0;
         1,1,1;
         0,1,0];
matriz2=[0,0,1;
         0,1,0];
matriz3=[0,0,1;
         0,1,0;
         0,0,0];

X1=[0,0,0,0,0,0,0,0];
X2=[0;0;0;0;0;0];
Z1=[1,1,1,1,1,1,1,1];
Z2=[1;1;1;1;1;1];

A1=horzcat(A,X2);A1=horzcat(X2,A1);
A1=vertcat(A1,X1);A1=vertcat(X1,A1);
B1=horzcat(B,X2);B1=horzcat(X2,B1);
B1=vertcat(B1,X1);B1=vertcat(X1,B1);

A1_1=horzcat(A,Z2);A1_1=horzcat(Z2,A1_1);
A1_1=vertcat(A1_1,Z1);A1_1=vertcat(Z1,A1_1);

AD1=imdilate(A,matriz1);
AD2_t=imdilate(A1,matriz3);
AD2 = AD2_t(1:end-2, 3:end); % extrae las columnas de la 3 en adelante y elimina las últimas dos filas
AD1_1=imdilate(A1_1,matriz1);
AD1_1=AD1_1(1:end-2, 3:end);

BD1=imdilate(B,matriz1);
BD2_t=imdilate(B1,matriz3);
BD2 = BD2_t(1:end-2, 3:end); % extrae las columnas de la 3 en adelante y elimina las últimas dos filas

%Erosion

AD1_E=imerode(A,matriz1);
AD2_et=imerode(A1,matriz3);
AD2_E= AD2_et(1:end-2, 3:end); % extrae las columnas de la 3 en adelante y elimina las últimas dos filas
AD1_1E=imdilate(A1_1,matriz1);
AD1_1E=AD1_1E(1:end-2, 3:end);

BD1_E=imerode(B1,matriz1);
BD1_E=BD1_E(1:end-2, 3:end);
BD2_et=imerode(B1,matriz3);
BD2_E = BD2_et(2:end-1, 2:end-1); % extrae las columnas de la 3 en adelante y elimina las últimas dos filas

