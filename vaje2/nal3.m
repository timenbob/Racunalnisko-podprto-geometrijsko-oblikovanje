function p = plotbezier(B,t,c)
% Opis:
% plotbezier nariše Bezierjevo krivuljo za dane kontrolne točke in
% seznam parametrov
%
% Definicija:
% p = plotbezier(B,t,c)
%
% Vhodni podatki:
% B matrika velikosti n+1 x d, ki predstavlja kontrolne točke
% Bezierjeve krivulje stopnje n v d-dimenzionalnem prostoru,
% t seznam parametrov dolžine k, pri katerih računamo vrednost
% Bezierjeve krivulje,
% c opcijski parameter, ki določa barvo krivulje
%
% Izhodni podatek:
% p grafični objekt, ki določa krivuljo

d=size(B,2);
b=bezier(B,t);
if d==1
    n=size(B,1)-1;
    x=(0:n)'/n;
    hold on
    p_cpol=plot(x,B);
    p_cpts=scatter(x,B);
    p=plot(t,b);
elseif d==2
    hold on
    p_cpol=plot(B(:,1),B(:,2));
    p_cpts=scatter(B(:,1),B(:,2));
    p=plot(b(:,1),b(:,2));
elseif d==3
    hold on
    p_cpol=plot(B(:,1),B(:,2),B(:,3));
    p_cpts=scatter(B(:,1),B(:,2),B(:,3));
    p=plot(b(:,1),b(:,2),b(:,3));
end
end
B = [0 0; 1 2; 3 3; 4 -1; 0 2];
t = linspace(0,1);
plotbezier(B,t);

% zrcaljenje krivulje čez y os
Bz = B*[-1 0; 0 1]
plotbezier(Bz,t)

% rotacija krivulje za 60 stopinj
fi = pi/3;
Br = B*[cos(fi) -sin(fi); sin(fi) cos(fi)]'
plotbezier(Br,t);