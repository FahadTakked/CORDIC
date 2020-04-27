function [ans] = Qexppos(value)
zNT = numerictype(1,32,10);
xyNT = numerictype(1,32,10);
xout = fi(value,xyNT);
yout = fi(1,xyNT);
zout = fi(1,zNT);
ans = fi(1,zNT);
a = [5.5452 2.7726 1.3863 0.6931 0.4055 0.2231 0.1178 0.0606 0.0308 0.0155 0.0078]; 
inpLUTk = fi(a,zNT);
b =[256 16 4 2 3/2 5/4 9/8 17/16 33/32 65/64 129/128];
inpLUTexpk = fi(b,zNT); 
[ans] = expcal(xout,inpLUTk,inpLUTexpk);
end

