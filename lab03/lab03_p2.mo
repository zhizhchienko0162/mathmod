model lab03_p2
parameter Real a = 0.203;
parameter Real b = 0.705;
parameter Real c = 0.203;
parameter Real h = 0.801;

Real x(start=50000);
Real y(start=39000);

equation
der(x) = -a * x - b * y + sin(2 * time);
der(y) = -c * x * y - h * y + 2 * cos(time + 4);
end lab03_p2;
