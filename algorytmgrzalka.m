clear
clc
%%
%OGRANICZENIA
A = [200 200 200; 200 200 200; 200 200 200];
b = [500;500;500];
tic
model = 'PIDpodgrzewacz';
load_system(model);
%%
%Algorytm GENETYCZNY
% GENERATIONS - liczba generacji
% DISPLAY - œledzenie pracy algorytmu genetycznego
% POPULATIONSIZE - liczba populacji 
% CROSSOVERFRACTION - metoda krzy¿owa (domyœlnie ustawiano jest na 80%)
options = gaoptimset('Generations',20,'Display','iter','PopulationSize',10,'CrossoverFraction',0.8);
output = ga(@funkcja1,3,[],[],[],[],[0;0;0],[400;400;400],[],options);
toc


