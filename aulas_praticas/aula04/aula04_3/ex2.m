% codigo base para detecao de pares similares
udata = load('u.data'); % carrega o ficheiro dos dados dos filmes
% fica apenas com as duas primeiras colunas

data = udata(1:end,1:2); clear udata;

% lista de utilizadores
users = unique(data(100,1)); % extrai os IDs dos utilizadores

tic;
movies = movieslist(users,data);
fprintf("time to get movies: %7.6es\n",toc);

tic;
dist = getdistancia(users,movies);
fprintf("time to calculate distances: %7.6es\n",toc);



% Com base na distancia, determina pares com
% distancia inferior a um limiar pre-definido
threshold = 0.4; % limiar de decisao
tic;
pairs = similares(users,dist,threshold);
fprintf("time to get similar pairs: %7.6es\n",toc);

fprintf("Similar users (%d pairs)\n",size(pairs,1)); % height returns the number of rows in the table
for i = 1:size(pairs,1)
    u1 = pairs(i,1);
    u2 = pairs(i,2);
    d = dist(u1,u2);
    fprintf("Pair (%d,%d): %f\n",u1,u2,d);
end % o print do par nao funciona