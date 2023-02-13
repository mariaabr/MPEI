%% alinea a)
%3 estados -> sol, nuvens, chuva

T = [0.7, 0.2, 0.1; 0.2, 0.3, 0.5; 0.3, 0.3, 0.4]'

%% alinea b) -> estar sol 1,2,3 dias
% sol = 1; nuvens = 2; chuva = 3
x0 = [1;0;0]'; % estado 1 dia com sol
x1 = T.*x0; % estado 2 dias com sol
x2 = T.*x0; % estado 3 dias com sol

%ou -> T(sol,sol)*T(sol,sol)
probSimulacaob = 1*x1(1)*x2(1)

%% alinea c) -> nao chover dia 2 nem 3 com 1 sol
sol = 1; nuvens = 2; chuva = 3;
probSimulacaoc = T(sol,sol)*T(sol,sol)+T(nuvens,sol)*T(sol,nuvens)+T(nuvens,sol)*T(nuvens,nuvens)+T(sol,sol)*T(nuvens,sol) %T(dia n+1, dia n)

%% alinea d)
sol = 1; nuvens = 2; chuva = 3;

ud = [1;0;0];
countd = ud;

for i = 1:30
    ud = T*ud;
    countd = countd + ud
end

countsold = countd(sol)
countnuvensd = countd(nuvens)
countchuvad = countd(chuva)

%% alinea e)
sol = 1; nuvens = 2; chuva = 3;

ue = [0;0;1];
counte = ue;

for i = 1:30
    ue = T*ue;
    counte = counte + ue
end

countsole = counte(sol)
countnuvense = counte(nuvens)
countchuvae = counte(chuva)

%% alinea f)
sol = 1; nuvens = 2; chuva = 3;

uf = [1;0;0];
countf = 0.1*uf(sol)+0.3*uf(nuvens)+0.5*uf(chuva);

for i = 1:30
    uf = T*uf;
    countf = countf+0.1*uf(sol)+0.3*uf(nuvens)+0.5*uf(chuva);
end

countsolf = countf

uf2 = [0;0;1];
countf2 = 0.1*uf2(sol)+0.3*uf2(nuvens)+0.5*uf2(chuva);

for i = 1:30
    uf2 = T*uf2;
    countf2 = countf2+0.1*uf2(sol)+0.3*uf2(nuvens)+0.5*uf2(chuva);
end

countsolf2 = countf2