model lab07
parameter Real alpha1 = 0.83;
parameter Real alpha2 = 0.00013;

parameter Integer N = 885;

Real n(start=3);
equation
der(n) = (alpha1 + alpha2 * n) * (N - n);
end lab07;
