function [x0,y0,z] = cordic_kernel_MagPhase(x0,y0,z,inpLUT)

shift_x = x0;
shift_y = y0;

for i = 1:10
    if -x0*y0<0
        z = accumpos(z,inpLUT(i));
        x0 = accumpos(x0,shift_y);
        y0 = accumneg(y0,shift_x);
    else
        z = accumneg(z,inpLUT(i));
        x0 = accumneg(x0,shift_y);
        y0 = accumpos(y0,shift_x);
    end
    shift_x = bitsra(x0,i);
    shift_y = bitsra(y0,i);
end

end

