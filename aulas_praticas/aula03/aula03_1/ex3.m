%% alinea a)

T = zeros(20,20);

for k = 1:20
   r = rand(1,20);
   r = r/sum(r);

   T(:,k) = r';
end

sum(T)

%% alinea b)

transicoes = [2 5 10 100];
ub = zeros(1,20);
ub(1) = 1;

for i = transicoes
    probSimulacaob = (T^i).*ub;
    fprintf("Número de ciclos: %d \nProbabilidade: %.5f \n", i, probSimulacaob(20,1))
end