%alinea a)
% n = brinquedos
% componentes (1 e 2)
N = 1e5;
p1 = 0.002;
p2 = 0.005;
%brinquedo com defeito se 1 ou 2 for defeituoso
pa = 0.01; %mesmo quando nenhum dos componentes esta com defeito
%A - uma caixa de brinquedos tem pelo menos 1 brinquedo com defeito
pdefeitos = 0.002+0.005+0.01;
n = 8;

brinquedos = rand(n,N) < pdefeitos;

sucessos = sum(brinquedos) == 0;
probSimulacaoa = 1 - (sum(sucessos)/N)

%alinea b)
%pelo menos 1 brinquedo e defeituoso
probSimulacaob = 0;
count = 0;
n = 8;
p1 = 0.002;
p2 = 0.005;
pa = 0.01;

pdefeitos = 0.002+0.005+0.01;
ndefeitos = rand(n,N) < pdefeitos;
defeituosos = ndefeitos > 0;
defeituosostotal = sum(defeituosos);

mdefeitos = (p1+p2)>0;
mdefeitos = (mdefeitos ~= pa) & pa;
nmdefeitos = sum(mdefeitos);

for i = 1:N
    if(defeituosostotal(i) ~= 0)
        probSimulacaob = probSimulacaob + nmdefeitos(i)/defeituosostotal(i);
        count = count + 1; 
    end
end

result = probSimulacaob/count %numero medio de brinquedos defeituosos