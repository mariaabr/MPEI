%alinea a)
p = 1/1000;
n = 8000;
chips = 7;

binomial = nchoosek(n,chips)*(p^chips)*(1-p)^(n-chips) %distribuicao binomial
fprintf('Binomial = %e\n', binomial)

%alinea b)
lambda = n*p;
poisson = ((lambda^chips)/factorial(chips))*exp(-lambda) %distribuicao de Poisson
fprintf('Poisson = %e\n', poisson)