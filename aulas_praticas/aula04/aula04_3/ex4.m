d_cell = cell(3,1);
n = 1;

udata = load("u.data");
data = udata(1:end,1:2); clear udata;
users = unique(data(:,1));
%users = users(randperm(length(users),100));

for k= [50,100,200]
    tic;
    movies = movieslist(users,data);
    fprintf("time to get movies: %7.6es\n",toc);

    tic;
    matrix = makematrix(movies);
    fprintf("time to get matrix: %7.6es\n",toc);

    tic;
    hashMat = minhash(matrix,k);
    fprintf("time to get minhash: %7.6es\n",toc);

    tic;
    dists = zeros(length(users),length(users));
    for i = 1:length(users)
        for j = i+1:length(users)
            dists(i,j) = sum(hashMat(:,i)==hashMat(:,j))/k;
        end
    end
    fprintf("time to calculate distances: %7.6es\n",toc);
    d_cell{n} = dists;

    tic;
    pairs = similares(users,dists,0.4);
    fprintf("time to get similar pairs: %7.6es\n",toc);
    fprintf("Similar users (%d pairs):\n\n",size(pairs,1));

    n = n+1;
end