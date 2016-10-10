clear
clc
%%OGRANICZENIA
A = [1 0 0; 0 1 0; 0 0 1];
b = [200;300;10];
tic
model = 'PIDsimulink';
load_system(model);
%%Algorytm GENETYCZNY
% GENERATIONS - liczba generacji
% DISPLAY - œledzenie pracy algorytmu genetycznego
% POPULATIONSIZE - liczba populacji 
% CROSSOVERFRACTION - metoda krzy¿owa (domyœlnie ustawiano jest na 80%)
options = gaoptimset('Generations',50,'Display','iter','PopulationSize',100,'CrossoverFraction',0.5);
output = ga(@funkcja,3,[],[],[],[],[0;0;0],[200;200;200],[],options);
toc