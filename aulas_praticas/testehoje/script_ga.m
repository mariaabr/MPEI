clc, clear;

%% alinea a)
A=1;    %Angola
B=2;    %Brasil
C=3;    %Chile
D=4;    %Dinamarca

T=zeros(4);
T(A, B)=10; T(A, C)=5; T(A, D)=1; T(A, A)=100-(10+5+1);
T(B, A)=10; T(B, C)=10; T(B, D)=10; T(B, B)=100-30;
T(C, D)=20; T(C, C)=100-20;
T(D, A)=50; T(D, B)=10; T(D, C)=10; T(D, D)=100-(50+10+10);

T=T'/100;

x0=[1; 2; 10; 5];   %estado antes da 1ªtransição
%o nº transições corresponde ao nº do mês

%para saber o estado antes de 1 agosto, faz-se transições até julho
x7=T^7*x0;

fprintf("a) Antes de 1 de agosto de 2014, estas são as toneladas de contentores em cada país:\n")
fprintf("\tAngola: %.4f toneladas\n", x7(A))
fprintf("\tBrasil: %.4f toneladas\n", x7(B))
fprintf("\tChile: %.4f toneladas\n", x7(C))
fprintf("\tDinamarca: %.4f toneladas\n", x7(D))

%% alinea b)
M = [T-eye(4); ones(1,4)]; % 4 -> length(T)
x = [0 0 0 0 1]';
Tlim = M\x;

%Tlim representa a prob limite
%Multiplicando pelo nº toneladas, obtem se o limite do nºtoneladas cada país
TonLim=Tlim*18;
%o nº max ou é o inicial ou o limite
fprintf("\nb) Valor máximo de toneladas de contentores em cada país:\n")
fprintf("\tAngola: %.2f toneladas\n", max(TonLim(A), x0(A)))
fprintf("\tBrasil: %.2f toneladas\n", max(TonLim(B), x0(B)))
fprintf("\tChile: %.2f toneladas\n", max(TonLim(C), x0(C)))
fprintf("\tDinamarca: %.2f toneladas\n", max(TonLim(D), x0(D)))

%% alinea c)
n=0;
x=x0;
while true
    x=T*x;
    n=n+1;
    if x(D)<2
        break
    end
end

fprintf("\nc) A Dinamarca passa a ter menos de 2 milhões de toneladas a 01-%02d\n", n)