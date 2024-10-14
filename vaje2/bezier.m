
function b = bezier(B,t)
% Opis:
% bezier vrne točke na Bezierjevi krivulji pri danih parametrih
%
% Definicija:
% b = bezier(B,t)
%
% Vhodna podatka:
% B matrika velikosti n+1 x d, ki predstavlja kontrolne točke
% Bezierjeve krivulje stopnje n v d-dimenzionalnem prostoru,
% t seznam parametrov dolžine k, pri katerih računamo vrednost
% Bezierjeve krivulje
%
% Izhodni podatek:
% b matrika velikosti k x d, kjer i-ta vrstica predstavlja točko
% na Bezierjevi krivulji pri parametru iz t na i-tem mestu

n1=size(B);
n=n1(1)-1;
b=zeros(n+1,2);

for i=1:length(t)
    D1=decasteljau(B(:,1),t(i));
    b(i,1)=D1(1,end);
    D2=decasteljau(B(:,2),t(i));
    b(i,2)=D2(1,end);
end
end

%B = [0 0; 1 2; 3 3; 4 -1; 0 2];
%t = linspace(0,1,10);
%bezier(B,t)
