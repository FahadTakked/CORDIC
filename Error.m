clc
clear all
close all

t = 1:1:100;
for i = 1:length(t)
    a(i) = Qlog(t(i));
    b(i) = log(t(i));
end
error = abs(accumneg(a,b));
error = mean(error)
subplot(3,1,1);
plot(a);
title("CORDIC Phase at every point of a circle ");
subplot(3,1,2);
plot(b);
title("Matlab Phase at every point of a circle  ");
subplot(3,1,3);
plot(a-b);
title("Error");

