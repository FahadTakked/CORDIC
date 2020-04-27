function [ans] = logcal(value,inpLUTk,inpLUTexpk)
ansNT = numerictype(1,32,10);
ans =fi(5.5452,ansNT);
F = fimath('ProductMode','SpecifyPrecision',...
		'ProductWordLength',32,'ProductFractionLength',10);
for j = 1:11    
for i = 1:10
    a = mpy(F,value,inpLUTk(i));
    if a<1
        value = mpy(F,value,inpLUTk(i));
        ans = accumneg(ans,inpLUTexpk(i));
        break;
    end
end
end

end