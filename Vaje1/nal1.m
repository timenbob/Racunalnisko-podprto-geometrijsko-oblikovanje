format long
function b = power2bernstein(p)
% Opis:
% power2bernstein pretvori polinom, predstavljen s koeficienti v
% potenčni bazi, v polinom, predstavljen v Bernsteinovi bazi
%
% Definicija:
% b = power2bernstein(p)
%
% Vhodni podatek:
% p seznam koeficientov dolžine n+1, ki po vrsti pripadajo razvoju
% polinoma stopnje n v potenčni bazi od x^n do 1
%
% Izhodni podatek:
% b seznam koeficientov dolžine n+1, ki po vrsti pripadajo razvoju
% polinoma stopnje n v Bernsteinovi bazi od 0-tega do n-tega
% Bernsteinovega baznega polinoma

%binomski b = nchoosek(n,k)

n = length(p)-1;
b= zeros(1,n+1);
for i = 0:n
    for j=i:n
        b(j+1)=b(j+1)+power(-1,j+i)*nchoosek(n,j)*nchoosek(j,i);
    end
end
end

function p = bernstein2power(b)

n = length(b);
p= zeros(1,n);
for i = 1:n
for j=i:n
    koef =nchoosek(j,i)/nchoosek(n,i);
    p(j)=p(j)+koef;
    koef=0;
end
end
p;
end



p = [4 7 2 8 9 1 4];
b = power2bernstein(p)
%p1 = bernstein2power(b)