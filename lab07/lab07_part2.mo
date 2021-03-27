model lab07_part2
parameter Real alpha1 = 0.000024;
parameter Real alpha2 = 0.29;

parameter Integer N = 885;

Real n(start=3);
equation
der(n) = (alpha1 + alpha2 * n) * (N - n);
end lab07_part2;
