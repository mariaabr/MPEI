%alinea a)

x = 1 : 6;
px = ones(1,6)/6;

subplot(1,2,1) %2 linhas, 1 coluna, 1 janela/posicao de demonstracao dos graficos 
stem(x, px)
xlabel('xx');
xlim([0 7]);
ylabel('Função massa de probabilidade');

%alinea b)

x = 1 : 6;
px = ones(1,6)/6;
fx = cumsum(px);

subplot(1,2,2) 
stairs([0 x 7],[0 fx 1])
xlabel('xx');
xlim([0 7]);
ylabel('Função de distribuição acumulada');