model lab05
parameter Real a = 0.24;
parameter Real b = 0.44;
parameter Real c = 0.044;
parameter Real d = 0.024;

Real x(start=b/d);
Real y(start=a/c);
equation
der(x) = -a * x + c * x * y;
der(y) = b * y - d * x * y;
end lab05;
