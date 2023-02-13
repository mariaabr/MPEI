%alinea a)
N = 1e5;
n = 8;
x = 0 : 8;
px = zeros(1,9);

p1 = 0.002;
p2 = 0.005;
pa = 0.01;
    
pdefeitos = 0.002+0.005+0.01;
ndefeitos = rand(n,N) < pdefeitos;
defeitos = ndefeitos > 0;
brinquedos = sum(defeitos);

for b = brinquedos
    switch(b)
        case 0
            px(b+1) = px(b+1) + 1;
        case 1
            px(b+1) = px(b+1) + 1;
        case 2
            px(b+1) = px(b+1) + 1;
        case 3
            px(b+1) = px(b+1) + 1;
        case 4
            px(b+1) = px(b+1) + 1;
        case 5
            px(b+1) = px(b+1) + 1;
        case 6
            px(b+1) = px(b+1) + 1;
        case 7
            px(b+1) = px(b+1) + 1;
        case 8
            px(b+1) = px(b+1) + 1;
    end
end

px = px/N;
subplot(1,2,1)
stem(x, px)
xlabel('xx');
xlim([0 9]);
ylabel('Função massa de probabilidade n = 8');

%alinea b)
pxb = sum(px(3:9))

%alinea c)
media = sum(x.*px)
aux = (x - media).^2;
variancia = sum(aux.*px)
dp = sqrt(variancia)

%alinea da)
n = 16;
x = 0 : 8;
px = zeros(1,9);

p1 = 0.002;
p2 = 0.005;
pa = 0.01;
    
pdefeitos = 0.002+0.005+0.01;
ndefeitos = rand(n,N) < pdefeitos;
defeitos = ndefeitos > 0;
brinquedos = sum(defeitos);

for b = brinquedos
    switch(b)
        case 0
            px(b+1) = px(b+1) + 1;
        case 1
            px(b+1) = px(b+1) + 1;
        case 2
            px(b+1) = px(b+1) + 1;
        case 3
            px(b+1) = px(b+1) + 1;
        case 4
            px(b+1) = px(b+1) + 1;
        case 5
            px(b+1) = px(b+1) + 1;
        case 6
            px(b+1) = px(b+1) + 1;
        case 7
            px(b+1) = px(b+1) + 1;
        case 8
            px(b+1) = px(b+1) + 1;
    end
end

px = px/N;
subplot(1,2,2)
stem(x, px)
xlabel('xx');
xlim([0 9]);
ylabel('Função massa de probabilidade n = 16');

%alinea db)
pxb = sum(px(3:9))

%alinea dc)
mediad = sum(x.*px)
aux = (x - mediad).^2;
varianciad = sum(aux.*px)
dpd = sqrt(varianciad)