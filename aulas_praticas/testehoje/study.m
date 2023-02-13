% exercício 1

bet = 0;
M = [0.01   0.07   0.02
     0.04   bet    0.08 
     0.04   0.15   0.09
     0.01   0.20   0.01]

S = sum(sum(M));
bet = 1 - S

M2 = [0.01   0.07   0.02
     0.04   bet    0.08 
     0.04   0.15   0.09
     0.01   0.20   0.01]

x = 1:4;
y = 1:3;
for i = x
    px(i) = 0;
    for j = y
        px(i) = px(i) + M2(i,j);
    end
end

for i = y
    py(i) = 0;
    for j = x
        py(i) = py(i) + M2(j,i);
    end
end

px
py

% melhor e mais fácil
px2 = sum(M2,2) % soma as linhas
py2 = sum(M2)

yy = [0 2 3];
medx = sum(x*px2)
medy = sum(yy.*py2)
varx = sum((x.^2)*px2) - medx^2
vary = sum((yy.^2).*py2) - medy^2

% x -> linhas
% y -> colunas
exy = 0;
for i = y
    for j = x
        % j
        % yy(i)
        % M2(j,i)
        exy = exy + sum(j*yy(i)*M2(j,i));
    end
end

exy % correlação

covxy = exy - (medx*medy) % covariância

coefxy = covxy/(sqrt(varx)*sqrt(vary)) % coeficiente de correlação -> [-1, 1]

e = sum(yy.^2.*py2) + (medx + 1)^(1/2)
% exercício 2

% A - Angola B - Brasil C - Chile D - Dinamarca
T = [0.84   0.10   0     0.50
     0.10   0.70   0     0.10
     0.05   0.10   0.80  0.10
     0.01   0.10   0.20  0.30]

u = [1 2 10 5]'; % tonelagem inicial em cada país
T2 = u.*T^7;

A = T2(1,1)*1000000 % tonelagem em cada país antes de Agosto
B = T2(2,2)*1000000
C = T2(3,3)*1000000
D = T2(4,4)*1000000

% valor máximo -> estado estacionário
% Tu = u
% Tu - u = 0
% (T - I)*u = 0

R = [T-eye(length(T)) ; ones(1,length(T))];
v0 = [zeros(length(T),1) ; 1]; % vetor resultados, acrescentamos uma linha
res = R\v0

% dinamarca com menos de 2 milhoes de toneladas

% i = 1;
% v = v0;
% T3 = T;
% 
% while true
%     v = v*T3;
%     i = i + 1;
%     if v(4) < 2
%         break
%     end
% end
% 
% fprintf('Dia 1 do mês %i a Dinamarca passa a ter menos de 2 milhões de toneladas no seu território\n', i);
% disp('alinea c exercicio 2 está mal');