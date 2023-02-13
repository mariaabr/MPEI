% Forma canónica
% T = [ Q 0
%       R I]
% F = (I-Q)^(-1)
% sum(F)
% nº de transicoes de cada estado transitorio antes da absorcao
% B = R*F
% B(j,i) comecando em j, estado de absorcao em i


%% alinea a)

T = [0.8, 0, 0, 0.3, 0; 0.2, 0.6, 0, 0.2, 0; 0, 0.3, 1, 0, 0; 0, 0.1, 0, 0.4, 0; 0, 0, 0, 0.1, 1]

%% alinea b)

nb = 1:100;
ub = [1, 0, 0, 0, 0];

for i = nb
    H = T^i;
    probb = H.*ub;
    probSimulacaob(i) = probb(2);
end

figure(1);
plot(nb, probSimulacaob)
xlabel("n = 1:100");
ylabel("probabilidade de estar no estado 2");
grid on;

%% alinea c)

nc = 1:100;
uc = [1, 0, 0, 0, 0];

for i = nc
    H = T^i;
    probc3 = H.*ub;
    probSimulacaoc3(i) = probc3(3);
end

for i = nc
    H = T^i;
    probc5 = H.*ub;
    probSimulacaoc5(i) = probc5(5);
end

figure(2);
subplot(1,2,1);
plot(nc, probSimulacaoc3)
xlabel("n = 1:100");
ylabel("probabilidade de estar no estado 3");
grid on;

subplot(1,2,2);
plot(nc, probSimulacaoc5)
xlabel("n = 1:100");
ylabel("probabilidade de estar no estado 5");
grid on;

%% alinea d)

Tcan = [0.8, 0, 0.3, 0, 0;
        0.2, 0.6, 0.2, 0, 0;
        0, 0.1, 0.4, 0, 0;
        0, 0.3, 0, 1, 0;
        0, 0, 0.1, 0, 1];
Q = Tcan(1:3,1:3)

%% alinea e)

I = eye(3);
F = (I-Q)^(-1)

%% alinea f)

media = sum(F)

%% alinea g)

R = Tcan(4:5,1:3);
B = R*F