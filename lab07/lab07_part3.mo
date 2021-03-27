model lab07_part3
parameter Real alpha1 = 0.5;
parameter Real alpha2 = 0.3;

parameter Integer N = 885;

Real n(start=3);
equation
der(n) = (alpha1 * time + alpha2 * time * n) * (N - n);
end lab07_part3;
