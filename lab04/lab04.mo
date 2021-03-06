model lab04
parameter Real omega = sqrt(4);

Real x(start=0);
Real y(start=-2);
equation
der(x) = y;
der(y) = -(omega*omega) * x;
end lab04;
