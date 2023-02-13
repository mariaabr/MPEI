function dist = getdistancia(users,movieset)
numusers = length(users);
dist = zeros(numusers,numusers);
h = waitbar(0, 'Calculating...');

for i = 1:numusers
    waitbar(i/numusers, h);
    for j = i+1:numusers
        % adicionar código aqui -> slide 11 ppt Similaridade
        dist(i,j) = 1 - length(intersect(movieset{i},movieset{j}))/length(union(movieset{i},movieset{j})); 
    end
end
delete(h);
end