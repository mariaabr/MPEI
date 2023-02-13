%alinea a)
N = 1e5; %n de experiencias
%p = 0.2; %probabilidade acertar num alvo
n = 20; %n de dardos
m = 100; %n de alvos

lancamentos = randi(m, n, N); %gera uma matriz n*N com valores de 1-m por coluna
sucessos = 0; %experiencias onde nenhum alvo foi atingido mais do que 1x

for i = 1:N
    if length(unique(lancamentos(:, i))) == n %unique ignora os valores repetidos e guarda todos os outros, diferentes entre si
        %existe, agora, um conjunto de alvos não repetidos, percorrendo-os
        %coluna a coluna, se o numero de elementos unicos for igual a n
        %consideramos um sucesso (nenhum alvo foi atingido mais que 1x)
        sucessos = sucessos + 1;
    end
end

probSimulacaoa = sucessos/N

%alinea b)
N = 1e5;
n = 20;
m = 100;

lancamentos = randi(m, n, N);
sucessos = 0;

for i = 1:N
    if length(unique(lancamentos(:, i))) <= n - 1 %admitimos como <= n - 1 a existencia
        % de um alvo que foi atingido 2x ou mais, ja ha menos um alvo (n-1)
        sucessos = sucessos + 1;
    end
end

probSimulacaob = sucessos/N

%alinea c) - plot(n, probabilidade)
N = 1e5;
n = 10:10:100;
m1 = 1000;
m2 = 100000;

for i = 1:length(n)
    sucessos = 0;
    lancamentos = randi(m1, n(i), N);
    for j = 1:N
        if length(unique(lancamentos(:, j))) <= n(i) - 1
            sucessos = sucessos + 1;
        end
    end
    probabilidade1(i) = sucessos/N;
    %disp(probabilidade2(i) + " ----> " + i)
end

for i = 1:length(n)
    sucessos2 = 0;
    lancamentos = randi(m2, n(i), N);
    for j = 1:N
        if length(unique(lancamentos(:, j))) <= n(i) - 1
            sucessos2 = sucessos2 + 1;
        end
    end
    probabilidade2(i) = sucessos2/N;
    %disp(probabilidade2(i) + " ----> " + i)
end

figure(1);
subplot(1,2,1) %subplot(m,n,p) -> breaks the figure window
                                  %matriz m*n
plot(n, probabilidade1);
subplot(1,2,2)
plot(n, probabilidade2);

%alinea d)
N = 1e5;
n = 100;
m = [200, 500, 1000, 2000, 5000, 10000, 20000, 50000, 100000]; %alvos

for i = 1:length(m)
    sucessos3 = 0;
    lancamentos = randi(m(i), n, N);
    for j = 1:N
        if length(unique(lancamentos(:, j))) <= n - 1
            sucessos3 = sucessos3 + 1;
        end
    end
    probabilidade3(i) = sucessos3/N;
end

figure(2)
plot(m, probabilidade3)

    


