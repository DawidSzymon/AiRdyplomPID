clear
clc
%uchyb = funkcja(1,1,1)

tic
model = 'PIDwirnik';
load_system(model);
mypop = [ 1:1:100; 1:1:100; 1:1:100]';
options = gaoptimset('Generations',50,'Display','iter','CrossoverFraction',0.8,'InitialPopulation', mypop,'MutationFcn', {@mutationuniform, 0.01});
output = ga(@wirnik1,3,[],[],[],[],[0;0;0],[400;400;400],[],options);
toc
%%sta³y krok
%dla mutacji