model lab06
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
der(I) = -beta * I;
der(R) = beta * I;
der(S) = 0;
end lab06;
