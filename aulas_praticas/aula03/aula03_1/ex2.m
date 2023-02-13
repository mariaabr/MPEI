%% alinea a)

T = [1/3, 1/4, 0; 1/3, 11/20, 1/2; 1/3, 1/5, 1/2]
sum(T)

%% alinea b)

ub = [60; 15; 15]

%% alinea c)

probSimulacaoc = (T^30)*ub

%% alinea d)

ud = [30; 30; 30];
probSimulacaod = (T^30)*ud