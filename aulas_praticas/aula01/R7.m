%versao1
nexp = 1e5;
pc = 8/50;
p = 10;
nc = 3;

prob7 = probSimulacao6(pc, p, nc, nexp)

%versao2
p = 0.16;
k = 3;
n = 10;

prob7 = nchoosek(n, k) * p^k * (1-p)^(n-k)