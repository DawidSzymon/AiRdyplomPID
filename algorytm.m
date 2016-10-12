clear
clc
%%OGRANICZENIA
A = [1 0 0; 0 1 0; 0 0 1];
b = [0;0;0];
tic
model = 'PIDsimulink';
load_system(model);
%%Algorytm GENETYCZNY
% GENERATIONS - liczba generacji
% DISPLAY - œledzenie pracy algorytmu genetycznego
% POPULATIONSIZE - liczba populacji 
% CROSSOVERFRACTION - metoda krzy¿owa (domyœlnie ustawiano jest na 80%)
options = gaoptimset('Generations',2000,'Display','iter','PopulationSize',600,'CrossoverFraction',0.8);
output = ga(@funkcja,3,[],[],[],[],[],[],[],options);
toc

%,'ParetoFraction',0.35 ,'MigrationDirection','both'
%output = ga(@funkcja,3,[],[],[],[],[0;0;0],[200;200;200],[],options);
%b = [200;300;10];