% com o exercicio 6
N = 1e4;
Tcan = [0.8, 0, 0.3, 0, 0; 0.2, 0.6, 0.2, 0, 0; 0, 0.1, 0.4, 0, 0; 0, 0.3, 0, 1, 0; 0, 0, 0.1, 0, 1]
% matriz modo [Q,0;R,I] - forma canónica; o estado 3 passa a ser o estado 4

%% a)
% alinea f)

state1len = 0;
state2len = 0;
state4len = 0;
contador3 = 0;
contador5 = 0;

for i = 1:N
    state1 = crawl(Tcan, 1, [4 5]);

    if state1(end)==4
        contador3 = contador3 + 1;  
    end

    if state1(end)==5
        contador5 = contador5 + 1;  
    end

    state1len = state1len + (length(state1) - 1);

    state2 = crawl(Tcan, 2, [4 5]);
    state2len = state2len + (length(state2) - 1);

    state4 = crawl(Tcan, 4, [4 5]);
    state4len = state4len + (length(state4) - 1);
end

media1 = state1len/N
media2 = state2len/N
media4 = state4len/N

% alinea g)

arr = cell(1,N);

for i = 1:N
    randomi = randi(3); % porque rand 3 se não pode começar no estado 3? 

    state = crawl(Tcan, randomi, [4 5]);
    arr{i} = state;
end

min = length(arr{1});
max = length(arr{1});

for i=2:N
    if length(arr{i}) > max
        max=length(arr{i});
    end

    if length(arr{i}) < min
        min=length(arr{i});
    end
end

min
max