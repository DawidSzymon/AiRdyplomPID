clear
clc
%%
%OGRANICZENIA
A = [1 0 0; 0 1 0; 0 0 1];
b = [200;300;100];
tic
model = 'PIDsimulink';
load_system(model);
%%
%Algorytm GENETYCZNY
% GENERATIONS - liczba generacji
% DISPLAY - œledzenie pracy algorytmu genetycznego
% POPULATIONSIZE - liczba populacji 
% CROSSOVERFRACTION - metoda krzy¿owa
%mypop = populacja pocz¹tkowa 
mypop = [ 1:1:100; 1:1:100; 1:1:100]';
%x0=[1:1:10; 11:1:20; 21:1:30; 31:1:40; 41:1:50; 51:1:60; 61:1:70; 71:1:80; 81:1:90; 91:1:100];
options = gaoptimset('Generations',10,'Display','iter','CrossoverFraction',0.8,'InitialPopulation', mypop,'MutationFcn', {@mutationuniform, 0.01}, 'PlotFcns', {@My2gaplotbestf});
output = ga(@funkcja,3,A,b,[],[],[0;0;0],[400;400;400],[],options);
toc


