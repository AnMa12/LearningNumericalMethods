function []= Ex3c() 
    %fara pivotare si cu pivotare partiala pentru sistemul
    % eps * x1 + x2 =1
    % x1 + x2 = 2  eps = 10^(-20)
    eps = 10^(-20);
    [x1] = GaussFaraPiv([eps 1; 1 1],[1; 2])
    [x2] = GaussPivPart([eps 1; 1 1],[1; 2])
    
    %cu pivotare partiala si cu pivotare totala pentru sistemul
    % x1 + C * x2 =1
    % x1 + x2 = 2  C = 10^(20)
    C = 10^20;
    [y1] = GaussPivPart([1 C; 1 1],[C; 2])
    [y2] = GaussPivTotala([1 C; 1 1],[C; 2])
end