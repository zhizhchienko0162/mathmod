model lab03
parameter Real a = 0.445;
parameter Real b = 0.806;
parameter Real c = 0.419;
parameter Real h = 0.703;

Real x(start=50000);
Real y(start=39000);

equation
der(x) = -a * x - b * y + sin(time + 7) + 1;
der(y) = -c * x - h * y + cos(time + 4) + 1;
end lab03;
