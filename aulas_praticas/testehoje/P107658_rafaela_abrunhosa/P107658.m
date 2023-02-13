% exercicio 1

alpha = [0.2, 0.3, 0.45, 0.1];

%    1           2           3          4           5   Meta
T = [0           0           0          0           0   0
     1-alpha(1)  0           0          1-alpha(4)  1   0
     0           1-alpha(2)  0          alpha(4)    0   0
     0           alpha(2)    alpha(3)   0           0   0
     alpha(1)    0           0          0           0   0
     0           0           1-alpha(3) 0           0   1]


% percurso mais pequeno -> 1-2-3-Meta
u = [1 0 0 0 0 0]'; % estado inicial 1
res = (T^3)*u;
fim_meta = res(6)

% numero medio casas percorridas inicio-fim

Tcan = [0    0         0         0         0         0 % Q 0
        0.2  0         0         0         0         0 % R I
        0    0.7       0         0.1       0         0
        0    0.3       0.45      0         0         0
        0.8  0         0         0.9       1         0
        0    0         0.55      0         0         1]

Q = T(1:4,1:4);
F = inv(eye(length(Q)) - Q)

num_medio = sum(F(:,1))

% exercicio 2
% pfp = 1; -> taxa de falsos positivos pretendidos
% n = ? -> tamanho do filtro

max = 1e5;
k = 1;
m = 100; % adicionar 100 palavras
limiar = 1e-6;

for n = 100:max
    pfp = (1-exp(-(k*m)/n))^k; % probabilidade de falsos positivos
    if abs(pfp - 0.01) < limiar
        fprintf('tamanho adequado do filtro de Bloom: %i\n', n);
        break
    end
end

% n -> tamanho adequado
bloom_filter = init(n);

palavras = zeros(1,100);
for i = 1:length(palavras)
    key = double(i);
    for j = 1:length(key)
        j = string2hash(key, sdbm);
        bloom_filter(j) = key;
    end
end

% functions

function bloom_filter = init(n)
    bloom_filter = zeros(1,n);
end