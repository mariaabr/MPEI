%alinea a)
N = 1e5;
dias = 365; %numero de dias
n = 1; %numero de pessoas
probSimulacaoa = 0;

while probSimulacaoa <= 0.5
    n = n + 1
    aniver = randi(dias, n, N);
    sucessos = 0;
    
    for i = 1:N
        if length(unique(aniver(:, i))) <= (n - 1)
            sucessos = sucessos + 1;
        end
    end
    
    probSimulacaoa = sucessos/N
end

%alinea b)
N = 1e5;
dias = 365;
n = 1;

while probSimulacaob <= 0.9
    n = n + 1
    aniver = randi(dias, n, N);
    sucessos = 0;
    
    for i = 1:N
        if length(unique(aniver(:, i))) <= (n - 1)
            sucessos = sucessos + 1;
        end
    end
    
    probSimulacaob = sucessos/N
end

