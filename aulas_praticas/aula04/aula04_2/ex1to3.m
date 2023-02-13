% guardar um conjunto U1 -> 1000 palavras
% load("wordlist-preao-20201103.txt");
% U1 = zeros(1,1000);
% n = 8000;
% k = 3;

% filter = bloomfilter(8000, 3);

fid = fopen('wordlist-preao-20201103.txt', 'r');
dicionario = textscan(fid, '%s');
fclose(fid);

dicionario = dicionario{1};
p = 1000;
n = 8000;
k = 3;

bf = inic(n);

for i = 1:p
    bf = inser(bf,dicionario{i},k);
end

count = 0;
for i = 1001:11000 % testa para 10000
    if verif(bf,dicionario{i},k)==true
        count = count + 1;
    end
end

media = (count/10000)*100