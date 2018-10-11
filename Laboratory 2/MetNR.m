function [xaprox] = MetNR(f, df, val, eps)
    syms x %x e variabila simbolica adica parametru syms x y e 
           %arugmentu unei functii, e parametru nu are valori 
           %numerice -> daca ar avea val numerice
           %si am face integrala ar da 0 ca e constanta deci nu bun
    k = 2;
    a(1) = val;  
    % f(a(1)) = subs(f,x,a(1))
    a(2) = a(1) - subs(f,x,a(1))/subs(df,x,a(1));
    while abs(a(k)-a(k-1))/abs(a(k-1)) > eps
        k = k + 1;
        a(k) = a(k-1) - subs(f,x,a(k-1))/subs(df,x,a(k-1));
    end
    xaprox=a(k);
end