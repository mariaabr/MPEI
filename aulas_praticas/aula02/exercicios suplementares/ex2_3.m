%alinea a)
N = 1e7;
p1 = 0.002;
p2 = 0.005;
pa = 0.01;
%B - uma caixa de brinquedos nao tem brinquedos com defeitos
n = 8;

brinquedos = rand(n,N) < (0.002+0.005+0.01);

sucessos = sum(brinquedos) == 0;
probSimulacaoa = (sum(sucessos)/N)

%alinea b)
probSimulacaob = nchoosek(n,0)*(0.017^0)*(1-0.017)^(n-0)

%% os valores dao um bocadinho diferentes a partir da 3ª casa decimal

%alinea c) - teorico e pratico
p1 = 0.002;
p2 = 0.005;
pa = 0.01;
probSimulacaoct = 2:20;
probSimulacaoc = 2:20;

for k = 2:20
    n = k;
    p = (1-p1)*(1-p2)*(1-pa); %sem defeito = ~prob1:n
    probSimulacaoct(n-1) = nchoosek(n,k)*(p^k)*(1-p)^(n-k);

    p1 = 0.002;
    p2 = 0.005;
    pa = 0.01;
    
    pdefeitos = 0.002+0.005+0.01;
    ndefeitos = rand(n,N) < pdefeitos;
    defeitos = ndefeitos > 0;

    brinquedos = sum(defeitos);
    caixas = brinquedos == 0;
    probSimulacaoc(n-1) = sum(caixas)/N;
end

figure(1)
hold on;
plot(2:20, probSimulacaoct,'r')
plot(2:20,probSimulacaoc,'b')
plot(2:20,ones(19)*0.90,'g')
xlabel('numero de brinquedos por ciaxa');
ylabel('probabilidade de uma caixa nao ter brinquedos defeituosos');
grid on;

%alinea d)
plot(6,0.90,'k.')
legend('Probabilidade do evento B em função da capacidade da caixa, n - teorico', 'Probabilidade do evento B em função da capacidade da caixa, n - pratico','Probabilidade de 90%','P = 90% dos brinquedos não serem defeituosos')
hold off;



