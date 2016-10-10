function [ E ] = modelmplik( Nastawy )
%%PARAMETRY 

J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
%%
s=tf('s');
P_motor = K/((J*s+b)*(L*s+R)+K^2);
C= pid(Nastawy(1), Nastawy(2), Nastawy(3));
sys_c1=feedback(C * P_motor,1);
% step(sys_c1)
% grid
[y,t] = step(sys_c1);
zadana = ones(length(t),1);
uchyb = zadana-y;
E = sum(uchyb);

end

