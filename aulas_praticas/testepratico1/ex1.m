% alinea b)

%    A      B       C       D
T = [0.1    0.3     0.25    0.5
     0.3    0.1     0.25    0.3
     0.3    0.3     0.1     0.1
     0.3    0.3     0.4     0.1]

% T = [0.1, 0.3, 0.25, 0.5; 0.3, 0.1, 0.25, 0.3; 0.3, 0.3, 0.4, 0.1];

% alinea c)
A = 1; B = 2; C = 3; D = 4;

uc = [1/4; 1/4; 1/4; 1/4];
time = 5;

probSimulacaoc = (T^time)*uc;
probSimulacaoc = probSimulacaoc(B) % probabilidade publicidade B

% alinea d) -> probabilidades limite

%% CORRIGIR
n = length(T);
M = [T-eye(n); ones(1,n)];
ud = [zeros(n,1);1];
probSimulacaod = M\ud;
probSimulacaod = probSimulacaod(B)

% alinea e)

probSimulacaoe = T(A,B)*T(B,A)*T(A,A)*T(A,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,A)*T(A,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,A)*T(A,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,A)*T(A,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,A)*T(A,B)*T(B,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,B)*T(B,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,B)*T(B,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,B)*T(B,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,A)*T(A,C)*T(C,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,C)*T(C,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,C)*T(C,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,C)*T(C,C)*T(C,B)*T(B,A)...

                 + T(A,B)*T(B,A)*T(A,D)*T(D,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,D)*T(D,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,D)*T(D,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,A)*T(A,D)*T(D,D)*T(D,B)*T(B,A)...



                 + T(A,B)*T(B,B)*T(B,A)*T(A,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,A)*T(A,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,A)*T(A,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,A)*T(A,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,B)*T(B,B)*T(B,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,B)*T(B,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,B)*T(B,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,B)*T(B,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,B)*T(B,C)*T(C,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,C)*T(C,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,C)*T(C,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,C)*T(C,C)*T(C,B)*T(B,A)...

                 + T(A,B)*T(B,B)*T(B,D)*T(D,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,D)*T(D,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,D)*T(D,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,B)*T(B,D)*T(D,D)*T(D,B)*T(B,A)...



                 + T(A,B)*T(B,C)*T(C,A)*T(A,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,A)*T(A,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,A)*T(A,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,A)*T(A,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,C)*T(C,B)*T(B,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,B)*T(B,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,B)*T(B,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,B)*T(B,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,C)*T(C,C)*T(C,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,C)*T(C,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,C)*T(C,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,C)*T(C,C)*T(C,B)*T(B,A)...

                 + T(A,B)*T(B,C)*T(C,D)*T(D,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,D)*T(D,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,D)*T(D,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,C)*T(C,D)*T(D,D)*T(D,B)*T(B,A)...



                 + T(A,B)*T(B,D)*T(D,A)*T(A,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,A)*T(A,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,A)*T(A,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,A)*T(A,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,D)*T(D,B)*T(B,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,B)*T(B,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,B)*T(B,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,B)*T(B,D)*T(D,B)*T(B,A)...

                 + T(A,B)*T(B,D)*T(D,C)*T(C,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,C)*T(C,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,C)*T(C,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,C)*T(C,C)*T(C,B)*T(B,A)...

                 + T(A,B)*T(B,D)*T(D,D)*T(D,A)*T(A,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,D)*T(D,B)*T(B,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,D)*T(D,C)*T(C,B)*T(B,A)...
                 + T(A,B)*T(B,D)*T(D,D)*T(D,D)*T(D,B)*T(B,A);

probSimulacaoe







