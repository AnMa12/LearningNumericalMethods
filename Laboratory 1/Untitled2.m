% 2) Scrieti un Fisier Functie care calculeaza functia numerica
% x apartine lui R la n - sol a sist Ax = b, A apartine lui M de n (R),
% b apartine lui R la n A si b se citesc de la tast
% trebuie verificate conditiile: a) A sa fie patratica 
% b) A si b comptabili
% c) A inv
% A * x = b => x = A la -1 * b

% function [parametru returnat] = nume(parametrii)

function [x] = Untitled2(A, b)
    A = input('A = ')
    b = input('b = ')
    if size(A, 1) ~= size(A, 2)
        disp('A nu e patratica')
        return
    elseif size(A, 1) ~= length(b)
        disp('A si b sunt compatibili')
        return
    elseif det(A) == 0
        disp('A nu e inv');
        return
    end
    x = inv(A) * b
end

% A = 1 1 1   b = 3 2 1
%     1 1 0       
%     1 0 0       