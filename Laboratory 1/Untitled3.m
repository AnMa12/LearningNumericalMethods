% 3) Formula de aprox pentru n!, n apartine lui N -> 
% n! = sqrt(2n*pi)*(n/e) la n
% a) apropximare
% b) functia factorial
% c) eroare absoluta
% d) eroare relativa
% !!! da CTRL+C in Command Window cand treb sa iasa din scriptul vechi

for i = 20 : 10 : 50
    xi = sqrt(2 * i * pi) * ((i/exp(1))^i)
    x = factorial(i)
    err_abs = x - xi
    err_rel = err_abs/x
end