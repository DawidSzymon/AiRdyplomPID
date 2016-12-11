clear
clc
%%
%OGRANICZENIA
A = [1000 1000 1000; 1000 1000 1000; 1000 1000 1000];
b = [1500;0.5;1500];
tic
model = 'PIDpodgrzewacz';
load_system(model);
%%
%Algorytm GENETYCZNY
% GENERATIONS - liczba generacji
% DISPLAY - œledzenie pracy algorytmu genetycznego
% POPULATIONSIZE - liczba populacji 
% CROSSOVERFRACTION - metoda krzy¿owa
% 'SelectionFcn',@selectiontournament - selekcja metod¹ turniejow¹
mypop = [ 1:1:100; 1:1:100; 1:1:100]';
options = gaoptimset('Generations',50,'Display','iter','InitialPopulation', mypop,'MutationFcn', {@mutationuniform, 0.01},'CrossoverFraction',0.8,'PlotFcns', {@My2gaplotbestf},'SelectionFcn',@selectiontournament);
output = ga(@funkcja1,3,A,b,[],[],[0;0;0],[1500;1;1000],[],options);
toc


