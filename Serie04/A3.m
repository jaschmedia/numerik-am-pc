function A3()
%A3 Summary of this function goes here
%   Detailed explanation goes here
z=0:pi/100:2*pi;
p=cos(z);
p_1=approx_cos_1(z);
p_2=approx_cos_2(z);
p_3=approx_cos_3(z);

figure;
plot(z,p,z,p_1,z,p_2,z,p_3)
hold on
legend('cos','approx1','approx2','approx3', 'Location','SouthEast')
title('A3 b)')
hold off

z=-pi:pi/100:3*pi;
p_1=approx_cos_1(z);
p_2=approx_cos_2(z);
p_3=approx_cos_3(z);

figure;
plot(z,p_1,z,p_2,z,p_3)
hold on
legend('approx1','approx2','approx3', 'Location','NorthEast')
title('A3 b) Teil 2')
hold off

z=-2*pi:pi/100:4*pi;
p=cos(z);
p_1=approx_cos_1(mod(z,2*pi));
p_2=approx_cos_2(mod(z,2*pi));
p_3=approx_cos_3(mod(z,2*pi));

figure;
plot(z,p,z,p_1,z,p_2,z,p_3)
hold on
legend('exact','approx1','approx2','approx3', 'Location','NorthEast')
title('A3 c)+d)')
hold off

errp1=abs(p-p_1');
errp2=abs(p-p_2');
errp3=abs(p-p_3');

figure;
plot(z,errp1,z,errp2,z,errp3)
hold on
legend('approx1','approx2','approx3', 'Location','NorthEast')
title('A3 c)+d) Error')
hold off

figure;
semilogy(z,errp1,z,errp2,z,errp3)
hold on
legend('approx1','approx2','approx3', 'Location','NorthEast')
title('A3 c)+d) Error semilogy')
hold off
end

