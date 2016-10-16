clear
clc
%uchyb = funkcja(1,1,1)

A = [200 200 200; 200 200 200; 200 200 200];
b = [500;500;500];
tic
model = 'PIDwirnik';
load_system(model);
options = gaoptimset('Generations',10,'Display','iter','PopulationSize',10,'CrossoverFraction',0.8);
output = ga(@wirnik1,3,[],[],[],[],[0;0;0],[400;400;400],[],options);
toc
%'MigrationDirection','both'
%'ParetoFraction',0.8