model lab06_part2
parameter Real alpha = 0.01;
parameter Real beta = 0.02;

parameter Integer N = 18000;
parameter Integer I0 = 118;
parameter Integer R0 = 18;
parameter Integer S0 = N - I0 - R0;

Real I(start=I0);
Real R(start=R0);
Real S(start=S0);
equation
der(I) = alpha * S - beta * I;
der(R) = beta * I;
der(S) = -alpha * S;
end lab06_part2;
