fid = fopen('wordlist-preao-20201103.txt', 'r');
dicionario = textscan(fid, '%s');
fclose(fid);

dicionario = dicionario{1};
p = 1000;
n = 8000;
k = 4:10;

bf = inic(n);

for j = k
    for i = 1:p
        bf = inser(bf,dicionario{i},j);
    end
    
    count = 0;
    for i = 1001:11000 % testa para 10000
        if verif(bf,dicionario{i},j) == true
            count = count + 1;
        end
    end
    
    media = (count/10000)*100
end

% fazer graficos -> ACABAR

for j = k
    plot(j,media(i))
    legend("falsos negativos");
    xlabel("k funções de dispersão");
    ylabel("percentagem de falsos negativos");
    grid on;
end