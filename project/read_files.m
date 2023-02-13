udata = load("u.data");
u = udata(:,1:2); clear udata;

dic_movies = readcell('films.txt', 'Delimiter', '\t'); % filmes por id
nummovies = length(dic_movies); % numero de filmes (ids)

users = unique(u(:,1));
numusers = length(users);

% cell array dos ids dos movies por user
movies_ids = cell(numusers,1);
for i = 1:numusers
    index = find(u(:,1) == users(i));
    movies_ids{i} = [movies_ids{i} u(index,2)];
end

% min hash option2 
% 2 utilizadores similares ao atual -> conjuntos filmes avaliados
% apresenta os titulos que foram avaliados por um desses utilizadores mas
% nao pelo atual

k2 = 100; % n de funções hash a utilizar
minhash_movies = inf(numusers, k2);

for i = 1:numusers
    usermovies_ids = movies_ids{i}; % filmes avaliados de cada user                                                                                                                                                                                          
    for j = i:length(usermovies_ids)
        key = char(usermovies_ids(j));
        hh = zeros(1, k2);
        for n = 1:k2
            key = [key num2str(n)];
            hh(n) = DJB31MA(key, 127);
        end
        minhash_movies(i,:) = min([minhash_movies(i,:); hh]);
    end
end

% min hash option3
% aplicação seleciona filmes com distJ < 0.8, não avaliados pelo atual ->
% géneros cinematográficos
% matriz assinaturas + minhash generos

k3 = 100;
minhash_genres = inf(nummovies, k3);

for i = 1:nummovies
    for j = 2:7 % colunas de géneros por cada filme
        if ~anymissing(dic_movies{i,j})
            key = char(dic_movies{i,j});
            hhh = zeros(1, k3);
            for n = 1:k3
                key = [key num2str(n)];
                hhh(n) = DJB31MA(key, 127);
            end
            minhash_genres(i,:) = min([minhash_genres(i,:); hhh]);
        end
    end
end

% min hash option4
k4 = 100;
shingleSize = 3;

save info_files dic_movies numusers movies_ids minhash_movies k3 minhash_genres shingleSize k4