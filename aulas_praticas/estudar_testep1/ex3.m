% alinea b)

T = [0          0.5     0       7/30     0.5     0
     7/30       0       7/30    0        0       0
     0          0.5     0       7/30     0.5     0
     7/30       0       7/30    0        0       0
     7/30       0       7/30    7/30     0       0
     0.3        0       0.3     0.3      0       0]

% alinea c)

letras = [ "A" "C" "O" "R" "T" "FIM"];

rdi = randi(5);
statec = crawl(T,rdi,6);

for i = 1:length(statec)
    if statec(i) == 6
        break;
    end

    fprintf(letras(statec(i)));
end

fprintf("\n");

% alinea d)

N = 1e4;
arr = cell(1,N);

for i = 1:N
    rdi = randi(5);
    stated = crawl(T,rdi,6);

    arr{i} = stated;
end

% alinea e)

counte = 0;

for i = 1:N
    statee = crawl(T,rdi,6);
    if length(statee) == 5
        if (statee(1) == 5 && statee(2) == 1 && statee(3) == 2 && statee(4) == 3 && statee(5) == 6)
            counte = counte + 1;
        end
    end
end

probSimulacaoe = counte/N

% alinea f) -> ajuda!! como se faz algebricamente???

% alinea g)

countg = 0;
comprimento = 0;

for i = 1:10000
    stateg = crawl(T,rdi,6);
    if (stateg(1) == 5)
        countg = countg + 1;
        comprimento = comprimento + (length(stateg)-1); % length(stateg)-1 porque conta com o "FIM"
    end
end

media1T = comprimento/countg
