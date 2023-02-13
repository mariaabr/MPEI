function movies = movieslist(users,data)
numusers = length(users);
movies = cell(numusers,1); % usa celulas

for i = 1:numusers % para cada utilizador
    % obtem os filmes de cada um
    ind = find(data(:,1) == users(i));
    % guarda num array. Usa celulas porque utilizador tem um numero
    % diferente de filmes. Se fossem iguais podia ser um array
    movies{i} = [movies{i} data(ind,2)];
end
end