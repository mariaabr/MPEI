%alinea a)
msg = 0;

lambda = 15; %mensagens por segundo
poisson = ((lambda^msg)/factorial(msg))*exp(-lambda)

%alinea b)
msg = 10;
poissonb = 0;


for i = 0:msg
    poissonb = poissonb + ((lambda^msg)/factorial(msg))*exp(-lambda);
end

probSimulacaob = 1 - poissonb