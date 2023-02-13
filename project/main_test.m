load info_files;

prompt = "Insert User ID (1 to 943): \n";
validate = 0;

while validate == 0
    id = input(prompt, "s");
    id = str2double(id);

    if ((id < 1 || id > 943) || isnan(id))
        fprintf("não existe nenhum user com este id\n");
    else
        validate = 1;
    end
end

% menu

cab = "\n MENU\n1 - Your movies\n2 - Suggestion of movies based on other users\n" + ...
    "3 - Suggestion of movies based on already evaluated movies\n4 - Movies feedback based on popularity\n5 - Exit\nSelect choice:\n";

while true
    option = input(cab, "s");
    option = str2double(option);

    if (isnan(option))
        fprintf("a opção não existe");
    else
        switch option
            case 1 % your movies
                my_movies(id, movies_ids, dic_movies);
            case 2 % suggestion of movies based on other users % passar o código para a função
                sug_users(id, dic_movies, movies_ids, minhash_movies);
            case 3 % suggestion of movies based on already evaluated movies
                sug_evaluated_movies(id, dic_movies, movies_ids, minhash_genres);
            case 4 % movies feedback based on popularity
                feedback_popularity(shingleSize);
            case 5 % exit
                fprintf("exit\n");
                return;
            otherwise
                fprintf("a opção não existe\n");
        end
    end
end

% functions

function my_movies(id, movies_ids, dic_movies)
for i = movies_ids{id}' % i é um vetor linha
    fprintf("movie id %d: %s\n", i, dic_movies{i});
end
end

function sug_users(id, dic_movies, movies_ids, minhash_movies)
    % done por agora -> passar código para aqui, funcional
    [m, n] = size(minhash_movies);
    distusers = zeros(m, 2);
    for i = 1:m
            distusers(i,1) = sum(minhash_movies(id,:) ~= minhash_movies(i,:)) / n; % distancia entre users
            distusers(i,2) = i; % guardar as posições
    end
    
    distsorted = sortrows(distusers, 1);
    similaruser1 = distsorted(2,2); % distsorted(1,1) = 0 porque equivale ao próprio user
    similaruser2 = distsorted(3,2);
    
    % comparar os similares ao atual
    fprintf("utilizador atual: %d\nutilizador mais similar: %d\n2º utilizador mais similar: %d\n", id, similaruser1, similaruser2);
    fprintf("----------------------------------\n");
    moviesatual = movies_ids{id}; % filmes avaliados pelo atual
    moviessimilar1 = movies_ids{similaruser1}; % filmes avaliados pelo mais similar
    moviessimilar2 = movies_ids{similaruser2}; % filmes avaliados pelo 2º mais similar
    k = 1;
    
    for i = 1:length(moviessimilar1)
        if ismember(moviessimilar1(i), moviesatual) == 0
                % matrix(linhas, colunas)
                listnoaval1(1,k) = moviessimilar1(i); % filmes não avalidados pelo atual mas pelo similar1
                k = k + 1;
        end
    end
    
    k = 1;
    
    for i = 1:length(moviessimilar2)
        if ismember(moviessimilar2(i), moviesatual) == 0
                % matrix(linhas, colunas)
                listnoaval2(1,k) = moviessimilar2(i); % filmes não avalidados pelo atual mas pelo similar2
                k = k + 1;
        end
    end
    
    % print das sugestões nao vistas pelo user atual
    fprintf("Suggestions of movies (option 2):\n");
    for i = listnoaval1 % i é um vetor linha
        fprintf("Movie -> %s\n", dic_movies{i});
    end
    for i = listnoaval2 % i é um vetor linha
        fprintf("Movie -> %s\n", dic_movies{i});
    end
end

function sug_evaluated_movies(id, dic_movies, movies_ids, minhash_genres)
[m, n] = size(minhash_genres);
distgenres = zeros(m, 2);
k = 1;
for i = 1:m
    distgenres = sum(minhash_genres(id,:) ~= minhash_genres(i,:)) / n; % distancia entre users
    if distgenres < 0.8
        if ismember(movies_ids{id},i)
            continue;
        else
            distgenres_2(k,:) = [distgenres i]; % guardar ids dos filmes na coluna 2
            k = k + 1;
        end
    end
end
end

function feedback_popularity(shingleSize, k4)
    fprintf("function not implemented\n");

    search = lower(input('Write a string: ', 's'));
    while (length(search) < shingleSize)
        fprintf('Write a minimum of %d characters\n', shingleSize);
        search = lower(input('Write a string: ', 's'));
    end
    
    fprintf("\n---------- MOST SIMILAR TITLES ----------\n\n");

    searchTitle(search, minHashTitles(movies, k4, shingleSize), k4, movies, shingleSize);
end