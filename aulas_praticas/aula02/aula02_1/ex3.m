%alinea a)
N = 1e5;
T = 1000; %numero de posições do array
k = 10; %numero de keys
sucessos  = 0;

for i =1: N
    throws = randi(T,1,k); % gerar um array com 10 inteiros aleatórios entre 1 e 1000
    if length(throws) ~= length(unique(throws)) % se houver pelo menos dois inteiros iguais
        sucessos = sucessos + 1;
    end 
end
probSimulacaoa = sucessos/N % prob = casos favoráveis (sucessos) / casos totais (N)

%alinea b)
k = 10:10:100; %numero de keys
T = 1000; %espaco do array
N = 1e5; %numero de experiencias

for i=1 : length(k)
    throws = randi(T,k(i),N);
    sucesso = 0;
    for j= 1: N
        if  length(throws(:,j)) ~= length(unique(throws(:,j))) 
            sucessos = sucessos + 1;
        end
    end
    probSimulacaob(i) = sucessos/N;
end 

figure(1)
ylabel("Probabilidade");
xlabel("Keys val");
plot(k, probSimulacaob);

%alinea c)
k = 50; %numero de keys
T = 100:100:1000; % tamanhos do array
N = 1e5;

for j=1; length(T)
    r = randi(k, T(j), N);
    sucessos = 0;
    for i=1: N
        if length(unique(r(:,i))) == j
        sucessos = sucessos +1;
        end
    end
    probSimulacaoc(j) = sucessos/N;
end

figure(2);
plot(T, probSimulacaoc);