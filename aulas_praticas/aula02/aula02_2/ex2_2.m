%alinea b)

x = [5 50 100];
px = [0.9 0.09 0.01];

subplot(1,2,1)
stem(x, px)
xlabel('xx');
xlim([0 100]);
ylabel('Função massa de probabilidade');
grid on;

%alinea c)

x = [5 50 100];
px = [0.9 0.09 0.01];
fx = cumsum(px);

subplot(1,2,2)
stairs([0 x 100],[0 fx 1])
xlabel('xx');
xlim([0 100]);
ylabel('Função de distribuição acumulada');