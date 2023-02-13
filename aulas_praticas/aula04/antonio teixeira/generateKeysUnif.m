function keys = generateKeysUnif(nkeys, imin, imax, alphabet)
% example of usage: keys = generateKeysUnif(1e5, 6, 20)

% if imax < imin
% aux = imin;
% imin = imax;
% imax = imin;
% end

% if imax <imin
% exit
% end

%% 1 -- determinar o comprimento da chave

comp = randi([imin, imax],nkeys,1);
comp

%% 2 --

keys = cell(nkeys,1);

% alphabet = ['a':'z' 'A':'Z']

n = length(alphabet)

for w=1:nkeys
    pos = randi(n,1,comp(w));
    word = alphabet(pos);
    keys(w) = word;
end

end