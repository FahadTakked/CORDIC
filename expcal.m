function [ans] = expcal(value,inpLUTk,inpLUTexpk)
ansNT = numerictype(1,32,10);
ans =fi(1,ansNT);
F = fimath('ProductMode','SpecifyPrecision',...
		'ProductWordLength',32,'ProductFractionLength',10);
for j = 1:11
for i = 1:11
    if accumneg(value,inpLUTk(i))>0
        value = accumneg(value,inpLUTk(i));
        ans = mpy(F,ans,inpLUTexpk(i));
        break;
    end
end
end


end

