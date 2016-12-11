clear
clc
tic
model = 'PIDwirnik';
load_system(model);
%%
%Algorytm GENETYCZNY
% GENERATIONS - liczba generacji
% DISPLAY - œledzenie pracy algorytmu genetycznego
% POPULATIONSIZE - liczba populacji 
% CROSSOVERFRACTION - metoda krzy¿owa
% mypop = populacja pocz¹tkowa 
% 'SelectionFcn',@selectiontournament - selekcja metod¹ turniejow¹
mypop = [ 1:1:100; 1:1:100; 1:1:100]';
options = gaoptimset('Generations',50,'Display','iter','CrossoverFraction',0.8,'InitialPopulation', mypop,'MutationFcn', {@mutationuniform, 0.7},'PlotFcns', {@My2gaplotbestf},'SelectionFcn',@selectiontournament);
output = ga(@wirnik1,3,[],[],[],[],[0;0;0],[700;400;400],[],options);
toc
