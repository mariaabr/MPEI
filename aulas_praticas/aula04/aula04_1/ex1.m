% alinea a)

n_keys = 1e5;
alphabeta = ['a':'z' 'A':'Z'];
imin = 6;
imax = 20;

gen_keys = generate_keys_unif(n_keys,imin,imax,alphabeta)

% alinea b)

prob_letters = load("prob_pt.txt"); % probabilidade de cada letra
imin = 6;
imax = 20;
alphabet = ['a':'z'];

for i = 1:length(alphabet)
    alphabetb(i) = discrete_rnd(alphabet,prob_letters);
    fprintf("\n %s - %d \n",alphabet(i),alphabetb(i));
end

gen_keys2 = generate_keys_unif(n_keys,imin,imax,alphabetb)