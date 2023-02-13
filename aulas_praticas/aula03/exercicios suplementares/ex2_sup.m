%% alinea a)

T = [0      0      0    0       0       0       0;
     0.5    0      0    0       0       0       0;
     0.5    0      0    0       0       0       0;
     0      1/3    0    0.2     0.1     0       0;
     0      1/3    0.6  0.5     0.4     0.3     0;
     0      1/3    0.4  0       0.3     0.3     0;
     0      0      0    0.3     0.2     0.4     0];

%% alinea b)

N = 1e5;
countb = 0;

for i = 1:N
    stateb = crawl(T,1,7);

    if length(stateb) == 7
        if stateb(2) == 2 && stateb(end - 1) == 6 %% o que é que isto faz??? -> state(2) == 2 é iniciada por 91 e state(end - 1) == 6 termina em 9
            countb = countb + 1;
        end
    end
end

probSimulacaob = countb/N

%% alinea c)

countc = 0;

for i = 1:N
    statec = crawl(T,1,7);

    if length(statec) == 7
        if statec(2) == 2 %% -> state(2) == 2 é iniciada por 91
            countc = countc + 1;
        end
    end
end

probSimulacaoc = countc/N