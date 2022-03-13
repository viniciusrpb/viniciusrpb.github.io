%Universidade Federal de Uberlandia - Faculdade de Computacao
%Calculo Numerico - MAT12
%Profa: Celia A. Z. Barcelos
%Monitor: Vinicius R. P. Borges
%Equacoes Diferenciais Ordinarias (EDO) - 2010/1

% Serie de Taylor - Primeira Ordem

function [x,y] = serieTaylor(x0,y0,xn,h)

    %Calcula tamanho do vetor y
    tam = ((xn - x0)/h) + 1;

    %Inicia vetor y
    x(1:tam) = 0;
    y(1:tam) = 0;
    
    %Inicia vetores x e y
    x(1) = x0;
    y(1) = y0;
    
    %Loop
    for n = 2:tam
        y(n) = y(n-1) + h*yl(x(n-1),y(n-1));
        x(n) = x(n-1) + h;
    end
    
end