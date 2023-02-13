% alinea c)

T = [0.1    1/4     0.2     1/4
    0.3     1/4     0.2     1/4
    0.3     1/4     0.4     1/4
    0.3     1/4     0.2     1/4];

uc = [1/4; 1/4; 1/4; 1/4];
sessao = 7;

probSimulacaoc = (T^sessao)*uc;
probSimulacaoc = probSimulacaoc(2)

% alinea d)
n = length(T);
M = [T-eye(n); ones(1,n)];
ud = [zeros(n,1);1];
probSimulacaod = M\ud;
probSimulacaod = probSimulacaod(2)

% alinea e)
oceano = 1;
floresta = 2;
deserto = 3;
urbano = 4;

probSimualacaoe = T(deserto,deserto)*T(deserto,oceano)*T(oceano,urbano)*T(urbano,urbano)...
                + T(deserto,deserto)*T(deserto,floresta)*T(floresta,urbano)*T(urbano,urbano)...
                + T(deserto,deserto)*T(deserto,deserto)*T(deserto,urbano)*T(urbano,urbano)...
                + T(deserto,deserto)*T(deserto,urbano)*T(urbano,urbano)*T(urbano,urbano);

probSimualacaoe
% T(dia n+1, dia n)