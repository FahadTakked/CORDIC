function [x] = Q37cos(theta)
theta = mod(theta,360);
normalization = theta/90;
normalization = floor(normalization);
neg = 0;
if theta >=90 && theta<180
    theta = 90 - mod(theta,90);
    neg = 1;
else if theta>=180 && theta<270
        theta = mod(theta,180);
        neg = 1;
    else if theta>=270 && theta<=360
        theta = 90 - mod(theta,90);
        else
            neg = 0;
    end
    end
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
    x = -x;
end
end

