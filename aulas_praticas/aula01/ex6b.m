nexp = 1e5; %numero de experiencias
pc = 0.3; %probabilidade de cara
p = 5; %numero de lancamentos
% nc = numero de caras


for nc = 0:2
  fprintf("P(Sairam %d defeituosas) = %d\n",nc,probSimulacao6(pc, p, nc, nexp));
end