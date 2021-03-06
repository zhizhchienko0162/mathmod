model lab04_p2
parameter Real gamma = 4;
parameter Real omega = sqrt(8);

Real x(start=0);
Real y(start=-2);
equation
der(x) = y;
der(y) = -gamma * y -(omega*omega) * x;
end lab04_p2;
