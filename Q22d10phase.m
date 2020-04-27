function [ans] = Q22d10phase(x,y)

zNT = numerictype(1,32,10);
xyNT = numerictype(1,32,10);
xout = fi(x,xyNT);
yout = fi(y,xyNT);
zout = fi(0,zNT);
inpLUT = fi(atan(2.^(-(0:9))),zNT);
[xout, yout, zout] = cordic_kernel_MagPhase(xout,yout,zout,inpLUT);
z0 = fi(180/pi,zNT);

F = fimath('ProductMode','SpecifyPrecision',...
		'ProductWordLength',32,'ProductFractionLength',10);
ans = mpy(F,z0,zout);
end