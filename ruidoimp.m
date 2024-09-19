function b=ruidoimp(a,p,imin,imax)
[m,n]=size(a);
a=double(a);
np=ceil(p*m*n);
turno=0;
b=a;
for inp=1:np
    k=ceil(m*rand);
    l=ceil(n*rand);
    if turno==0
        turno=1;
        b(k,l)=imax;
    else 
        turno=0;b(k,l)=imin;
    end
end
b=uint8(b);