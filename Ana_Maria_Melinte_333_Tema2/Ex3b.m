function []= Ex3b() 
    [x1] = GaussFaraPiv([0 1 1; 2 1 5; 4 2 1],[3; 5; 1])
    [x2] = GaussPivPart([0 1 1; 2 1 5; 4 2 1],[3; 5; 1])
    [x3] = GaussPivTotala([0 1 1; 2 1 5; 4 2 1],[3; 5; 1])
    
    [y1] = GaussFaraPiv([0 1 -2; 1 -1 1; 1 0 -1],[4; 6; 2])
    [y2] = GaussPivPart([0 1 -2; 1 -1 1; 1 0 -1],[4; 6; 2])
    [y3] = GaussPivTotala([0 1 -2; 1 -1 1; 1 0 -1],[4; 6; 2])
end