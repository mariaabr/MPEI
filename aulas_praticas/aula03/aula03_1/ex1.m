%% alinea a)
% 2 aulas por semana

T = [0.2 0.3; 0.8 0.7]
ua = [0;1]; % foi

Ha = (T^2)*ua;
probSimulacaoa = Ha(2)

%% alinea b)

ub = [1;0]; % faltou
Hb= (T^2)*ub;
probSimulacaob = Hb(2)

%% alinea c)

uc = [0;1]; % foi
Hc= (T^29)*uc;
probSimulacaoc = Hc(2)

%% alinea d) -> como se faz??

ud = [0.15;0.85];
p=T^(29)*ud; 
v=ud; %distribuição de probabilidade da primeira
p(1)=v(1); % probabilidade de faltar à primeira 

for i=1:29
    v=T*v;
    p(i+1)=v(1);
end

plot(1:30,p,'-*')
axis([0 31 0 0.3])