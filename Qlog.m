function [ans] = Qlog(value)
zNT = numerictype(0,32,10);
xyNT = numerictype(0,32,10);
xout = fi(value,xyNT);
yout = fi(0,xyNT);
zout = fi(0,zNT);
ans = fi(0,zNT);
a =[16 4 2 3/2 5/4 9/8 17/16 33/32 65/64 129/128];
b = [2.7726 1.3863  0.6931 0.4055 0.2231 0.1178 0.0606 0.0308 0.0155 0.0078]; 
inpLUTk = fi(a,zNT);
inpLUTexpk = fi(b,zNT); 
xout = bitsra(xout,8);
[ans] = logcal(xout,inpLUTk,inpLUTexpk);
end
