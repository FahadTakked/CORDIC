function [ans] = Q37mag(x,y)

zNT = numerictype(1,14,7);
xyNT = numerictype(1,14,7);
xout = fi(x,xyNT);
yout = fi(y,xyNT);
zout = fi(0,zNT);
inpLUT = fi(atan(2.^(-(0:9))),zNT);
[xout, yout, zout] = cordic_kernel_MagPhase(xout,yout,zout,inpLUT);
if xout<0
    xout = -xout;
end
x0 = fi(0.6073, xyNT);
F = fimath('ProductMode','SpecifyPrecision',...
		'ProductWordLength',14,'ProductFractionLength',7);
ans = mpy(F,x0,xout);
end

