%% Código 4 - com recurso a uma função exterior

%1:
nexp = 1e5;
pc = 0.5;
p = 3;
nc = 2;

prob1 = probSimulacao(pc, p, nc, nexp)


%2:
nexp = 1e5;
pc = 0.5;
p =15;
nc = 6;

prob2 = probSimulacao(pc, p, nc, nexp)

%3:
nexp = 1e5;
pc = 0.5;
p = 15;
prob3 = zeros(1,15);
total = 0;

for nc = 5:14
    prob3(nc + 1) = probSimulacao(pc, p, nc, nexp);
    total = total + prob3(nc + 1);
end

prob3
total

%% 3 está mal?!

%4 a)
nexp = 1e5; %numero de experiencias
pc = 0.5; %probabilidade de cara
p = 20; %numero de lancamentos
% nc = numero de caras

for nc = 0:p
  fprintf("P(Sairam %d caras) = %d\n",nc,probSimulacao(pc, p, nc, nexp));
end

disp("")
p = 40;

for nc = 0:p
  fprintf("P(Sairam %d caras) = %d\n",nc,probSimulacao(pc, p, nc, nexp));
end

disp("")
p = 100;

for nc = 0:p
  fprintf("P(Sairam %d caras) = %d\n",nc,probSimulacao(pc, p, nc, nexp));
end


%4 b)
probGeral = zeros(1,20);

for nc = 0 : 19
  probGeral(nc + 1) = probSimulacao(0.5, 20, nc, 1e5);
end

stem(probGeral);