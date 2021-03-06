model lab04_p3
parameter Real gamma = 3;
parameter Real omega = sqrt(4);

Real x(start=0);
Real y(start=-2);
equation
der(x) = y;
der(y) = -gamma * y -(omega*omega) * x + 5 * sin(2 * time);
end lab04_p3;
