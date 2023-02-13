%alinea a)
N = 1e5;
p = 1/6;
dado = 6;


%A - a soma dos dois valores é igual a 9
%B - o segundo valor é par
%C - pelo meno sum dos valores é igual a 5
%D - nenhum dos valores é igual a 1

%A
lancamentos =  randi(dado, 2, N);
sucessos = 0;

for i = 1:N
    if lancamentos(1, i) + lancamentos(2, i) == 9
        sucessos = sucessos + 1;
    end
end

probSimulacaoa = sucessos/N

%B
lancamentos =  randi(dado, 2, N);
sucessos = 0;

for i = 1:N
    if mod(lancamentos(2, i),2) == 0
        sucessos = sucessos + 1;
    end
end

probSimulacaob = sucessos/N

%C
lancamentos =  randi(dado, 2, N);
sucessos = 0;

for i = 1:N
    if lancamentos(1, i) == 5 || lancamentos(2, i) == 5
        sucessos = sucessos + 1;
    end
end

probSimulacaoc = sucessos/N

%D
lancamentos =  randi(dado, 2, N);
sucessos = 0;

for i = 1:N
    if lancamentos(1, i) ~= 1 && lancamentos(2, i) ~= 1
        sucessos = sucessos + 1;
    end
end

probSimulacaod = sucessos/N
