%aviao de 2 ou 4 motores

N = 1e5;
p = 0.05:0.05:1;

p2 = p.^2;
p4 = nchoosek(4,3).*(1-p).*p.^3 + p.^4;

plot(p,p2,'b')
hold on
plot(p,p4,'r')
hold off
xlabel('Probabilidade de um motor falhar');
ylabel('Probabilidade do avião cair');
grid on;
