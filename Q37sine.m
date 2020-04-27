function [y] = Q37sine(theta)
normalization = theta/90;
normalization = floor(normalization);
if mod(theta,360)>180
    neg = 1;
else
    neg = 0;
end
    if mod(normalization,2)>0
        theta = 90 - mod(theta,90);
    else
        theta = mod(theta,180);
    end
    
thetaNT = numerictype(1,14,10);
radTheta = fi(pi*theta/180,thetaNT);
zNT = numerictype(1,14,10);
xyNT = numerictype(1,10,7);
x = fi(0,xyNT);
y = fi(0,xyNT);

inpLUT = fi(atan(2.^(-(0:9))),zNT);
x0 = fi(0.6073, xyNT);
y0 = fi(0, xyNT);
[x, y, z] = cordic_kernel(x0,y0,radTheta, inpLUT);
if neg ==1
    y = -y;
end
end

