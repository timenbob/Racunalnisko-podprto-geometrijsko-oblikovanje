function D = decasteljau(b,t)
% Opis:
% decasteljau vrne shemo de Casteljaujevega postopka za dan seznam
% koordinat b pri danem parametru t
%
% Definicija:
% D = decasteljau(b,t)
%
% Vhodna podatka:
% b seznam koordinat kontrolnih točk Bezierjeve krivulje
% stopnje n,
% t parameter, pri katerem računamo koordinato Bezierjeve
% krivulje
%
% Izhodni podatek:
% D tabela velikosti n+1 x n+1, ki predstavlja de Casteljaujevo
% shemo za koordinate b pri parametru t (element na mestu
% (1,n+1) je koordinata Bezierjeve krivulje pri parametru t,
% elementi na mestih (i,j) za i > n-j+2 so NaN)
n=length(b)-1;
D=NaN(n+1);
%nastavim prvi stolpec
for i=1:n+1
    D(i,1)=b(i);
end
for i=2:n+1
    for j= 1:n+1
        if(j<n+3-i)%tale +3 je lahko mal eeee
            D(j,i)=(1-t)*D(j,i-1)+t*D(j+1,i-1);
        end
    end
end

end
%
%B = [0 0; 1 2; 3 3; 4 -1; 0 2];
%decasteljau(B(:,1),0);

%decasteljau(B(:,2),0);
%decasteljau(B(:,1),1);
%decasteljau(B(:,2),1);
%decasteljau(B(:,1),0.5);
%decasteljau(B(:,2),0.5);


