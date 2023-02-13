function similuse = similares(users, dist, threshold)
numusers = length(users);
similuse = zeros(1,3);
h = waitbar(0, 'Calculating...');
k = 1;

for i = 1:numusers
    for j = i+1:numusers
        if dist(i,j) < threshold
            similuse(k,:) = [users(i) users(j) dist(i,j)];
            k = k + 1;
        end
    end
end
delete(h);
end