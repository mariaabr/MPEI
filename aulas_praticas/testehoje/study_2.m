% exercicio 1

T = [0.9   0.5   0.5
     0.09  0.4  0.4
     0.01  0.1  0.1]

u = [0 0 1]' % o 1º pacote tem 3 erros

T3 = (T^3)*u % T^4(1º lugar) tem de ter o mesmo nº de colunas que u(2º lugar) de linhas

limiar = 0.01;
uant = u;
uatual = T*uant;

while max(abs(uant-uatual)) > limiar % max -> vai buscar o maior valor do vetor resultado
    uant = uatual;
    uatual = T*uant;
end

perdapacote = uatual(3)
perdapacotesemcorretor = uatual(2) + uatual(3) % ou 1- uatual(1)

% exercicio 2

H = [0   1/2   1/3   1/4   0
     1/2 0     0     1/4   1/2
     1/2 1/2   1/3   1/4   0
     0   0     0     0     1/2
     0   0     1/3   1/4   0]

N = length(H);
beta = 0.8;

A = beta*H + (1 - beta)*(ones(N)/N);

r0 = ones(N,1)/N;

A10 = (A^10)*r0;
r1 = A10(1)
r2 = A10(2)
r3 = A10(3)
r4 = A10(4)
r5 = A10(5)

% exercicio 3

T = [0.7   0.2   0    0    0   0
     0.2   0     0.3  0    0   0
     0     0.6   0.3  0    0   0
     0.1   0.2   0.3  0.1  0   0
     0     0     0.1  0.5  1   0
     0     0     0    0.4  0   1]

u = [1 0 0 0 0 0]'; % primeiro caracter é um a

T10 = (T^9)*u;
T15 = (T^14)*u;

caracter10_c = T10(3)
caracter15_d = T15(4)

% F = (I - Q)

Q = T(1:4,1:4);
F = inv(eye(length(Q)) - Q);

media = sum(F(:,3))