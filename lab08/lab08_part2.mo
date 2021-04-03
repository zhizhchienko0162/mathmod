model lab08_part2
parameter Real M0_1 = 4.9;
parameter Real M0_2 = 4.4;

parameter Real pcr = 12;
parameter Real N = 39;
parameter Real q = 1;

parameter Real tau1 = 19;
parameter Real tau2 = 29;

parameter Real p1 = 7.9;
parameter Real p2 = 5.8;

parameter Real a1 = pcr / (tau1 * tau1 * p1 * p1 * N * q);
parameter Real a2 = pcr / (tau2 * tau2 * p2 * p2 * N * q);
parameter Real b = pcr / (tau1 * tau1 * p1 * p1 * tau2 * tau2 * p2 * p2 * N * q);
parameter Real c1 = (pcr - p1) / (tau1 * p1);
parameter Real c2 = (pcr - p2) / (tau2 * p2);

Real M1(start=M0_1);
Real M2(start=M0_2);
equation
der(M1) / der(time / c1) = M1 - (b / c1 + 0.0003) * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) / der(time / c1) = c2 / c1 * M2 - b / c1 * M1 * M2 - a2 / c1 * M2 * M2;
end lab08_part2;
