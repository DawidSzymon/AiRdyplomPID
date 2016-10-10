clear
clc
A = [1 0 0; 0 1 0; 0 0 1];
b = [200;300;10];
tic
model = 'PIDsimulink';
load_system(model);
options = gaoptimset('Generations',50,'Display','iter','PopulationSize',100,'CrossoverFraction',0.5);
output = ga(@funkcja,3,[],[],[],[],[0;0;0],[200;200;200],[],options);
toc