function [ans] = Qexpneg(value)
zNT = numerictype(1,32,10);
xyNT = numerictype(1,32,10);
xout = fi(value,xyNT);
yout = fi(1,xyNT);
zout = fi(0,zNT);
ans = fi(0,zNT);
a = [0.01:1/10:1]; 
inpLUTexpk = fi(a,zNT);
b =log(a);
inpLUTk = fi(b,zNT); 
[ans] = expcal(value,inpLUTk,inpLUTexpk);



end
