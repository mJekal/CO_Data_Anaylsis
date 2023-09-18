
%% config

format compact

%% Problem #1

pb1_a = (5-19/7+(2.5)^3)^2
pb1_b = 7*3.1+sqrt(120)/5-15^(5/3)

%% Problem #2

pb2_a = nthroot(8+80/2.6,3) + exp(3.5)
pb2_b = (1/sqrt(75) + 73/3.1^3)^(1/4) + 55*0.41

%% Problem #3

pb3_a = ( 23 + nthroot(45,3)) / (16 * 0.7) + log10(589006)
pb3_b = (36.1-2.25*pi)*(exp(2.3)+sqrt(20))

%% Problem #4

pb4_a = 3.8^2 / (2.75-41*25) + (5.2+1.8^5) / sqrt(3.5)
pb4_b = (2.1*10^6-15.2*10^5) / (3*nthroot(6*10^11,3))

%% Problem #5

pb5_a = sin(0.2*pi) / cos(pi/6) + tand(72)
pb5_b = (tand(64)*cosd(15))^2 + sind(37)^2 / cosd(20)^2
 
%% Problem #6

z = 4.5;
pb6_a = 0.4*z^4 + 3.1*z^2 - 162.3*z-80.7
pb6_b = (z^3-23) / nthroot(z^2+17.5,3)

%% Problem #7

t = 3.2;
pb7_a = 1/2*exp(2*t)-3.81*t^3
pb7_b = (6*t^2+6*t-2) / (t^2-1)

%% Problem #8

x = 6.5;, y = 3.8;
pb8_a = (x^2+y^2)^(2/3) + x*y/(y-x)
pb8_b = sqrt(x+y)/(x-y)^2 + 2*x^2-x*y^2

%% Problem #9

c = 4.6;, d =1.7;, a = c*d^2;, b = c+a/c-d;
pb9_a = exp(d-b)+nthroot(c+a,3)-(c*a)^d
pb9_b = d/c+((c*t)/b)^2-c^d-a/b

%% Problem #10

x = pi/10;
pb10_a_LHS = cos(x)^2-sin(x)^2
pb10_a_RHS = 1-2*(sin(x)^2)
pb10_b_LHS = tan(x)/(sin(x)-2*tan(x))
pb10_b_RHS = 1 / (cos(x)-2)

%% Problem #11

x=20^c;
pb11_a_LHS = (sind(x)+cosd(x))^2
pb11_a_RHS = 1 + 2 * sind(x)*cosd(x)
pb11_b_LHS = (1-2*cosd(x)-3*cosd(x)^2) / sind(x)^2
pb11_b_RHS = (1-3*cosd(x)) / (1-cosd(x))

%% Problem #12

alpha = pi/8; beta = pi/6;
pb12_LHS = tan(alpha + beta)
pb12_RHS = (tan(alpha)+tan(beta))/ (1-tan(alpha)*tan(beta))

%% Problem #13

a1=(2*pi/3)*cos(pi/3)+((pi/3)^2-2)*sin(pi/3);
a2=(2*pi/6)*cos(pi/6)+((pi/6)^2-2)*sin(pi/6);
pb13 = a1-a2

%% Problem #22

pb22 = 4217-fix(4217/36)*36

%% Problem #23

pb23_bus_cnt = fix(777/46)
people_remain = rem(777,46);
pb23_seat_cnt =12*ceil(people_remain/12)-people_remain

%% Problem #24

format long g
pb24_var = 7E8/13;
pb24_a = round(pb24_var*10)*10^-1
pb24_b = round(pb24_var*10^-6)*10^6

%% Problem #32

pb32_k = log(0.5) / 5730;
pb32_t = log(0.7745) / pb32_k;
pb32 = round(pb32_t)

%% Problem #33

pb33_a = gcd(91,147)
pb33_b = gcd(555,962)

%% Problem #37

format default
format compact

t = 8; m = 95; k = 0.24; g=9.81;
pb37_v = sqrt(m*g/k)*tanh(sqrt(k*g/m)*t);
pb37_d = m/k * log(cosh(sqrt(k*g/m)*t));
pb37_v
pb37_d

%% Problem #38

format rat
pb38_a = 5/8 + 16/6
pb38_b = 1/3 - 11/13 +2.7^2

%% Problem #39

format default
format compact

n = 19;
factorial_real = sqrt((2*n+1/3)*pi)*n^n*exp(-n);
ApproxVal = factorial_real;
TrueVal = factorial(n);
pb39 = (TrueVal - ApproxVal) / TrueVal




