%erros tipograficos numa pagina de um livro
erros = 1;
poisson = 0;

for i = 0:erros
    lambda = 0.02*100; %max 1 erro por pagina * numero de paginas
    poisson = poisson + ((lambda^i)/factorial(i))*exp(-lambda);
end

poisson
