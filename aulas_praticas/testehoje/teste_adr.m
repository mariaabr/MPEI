clear all
clc

py0 = 0.01+0.04+0.04+0.01;
py2inc = 0.07+0.15+0.20;
py3 = 0.02+0.08+0.09+0.01;

beta = 1-py0-py2inc-py3;

py2 = 0.07+beta+0.15+0.20;
px1 = 0.01+0.07+0.02;
px2 = 0.04+beta+0.08;
px3 = 0.04 + 0.15 + 0.09;
px4 = 0.01 + 0.20 + 0.01;

x = [1 2 3 4];
px = [px1 px2 px3 px4];
y = [0 2 3];
py = [py0 py2 py3];

mediaX = sum(x.*px);
mediaY = sum(y.*py);

varX = sum(x.^2.*px)-mediaX;
varY = sum(y.^2.*py)-mediaY;

if  px1*py3 ~= 0.01
    disp("não");
end

corr = px1*py0*0.01 + px1*py2*0.07+px1*py3*0.02+...
           px2*py0*0.04 + px2*py2*beta+px2*py3*0.08+...
           px3*py0*0.04 + px3*py2*0.15+px3*py3*0.09+...
           px4*py0*0.01 + px4*py2*0.20+px4*py3*0.01;

cov = corr-mediaX*mediaY;

pxy = cov/(sqrt(varX)*sqrt(varY));

E = sum(y.^2.*py)*(mediaX+1)^(1/2);