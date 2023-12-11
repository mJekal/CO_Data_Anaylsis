%% Chapter 1. Starting with MATLAB

%% page 10

a = 1
1
a=1,b=1
a=1,...b=1

%% page 11

a = 1, b =2;

%% page 15

5 + 3
5 - 3
5 * 3
5 / 3
5 \ 3 == 3/ 5
5^3


%% page 16

7 + 8 / 2
(7 + 8) / 2
4 + 5 / 3 + 2
5 ^ 3 / 2
27^(1/3) + 32^0.2
27^1/3 + 32^0.2
0.7854 - (0.7854)^3/(1*2*3) + 0.785^5 / (1*2*3*4*5)...
    -(0.785)^7 / (1*2*3*4*5*6*7)

%% page 17

format short
290 / 7
format long
290 / 7
format short e 
290 / 7
format long e
290 / 7
format short g
290 / 7
format long g
290 / 7
format bank
290 / 7
format compact
format loose

%% page 18

format compact
format default

sqrt(64)
sqrt(50+14*3)
sqrt(54+9*sqrt(100))
(15+600/4)/sqrt(121)

%% page 19

sqrt(81)
nthroot(80,5)
exp(5)
abs(-24)
log(1000)
log10(1000)
factorial(5)

%% page 21

log(exp(1))
log2(2)
log10(10)
aa = log10(9) /log10(3)

%% page 22

sin(pi/6)
cosd(30)
tan(pi/6)
cotd(30)
cos(60)
cos(pi/3)
cosd(pi/3)
cosd(60)

%% page 24

round(17/5)
fix(13/5)
ceil(11/5)
floor(-9/4)
rem(13,5)
sign(5)
fix(-3.2)
ceil(-3.2)
floor(-3.2)
fix(3.2)
ceil(3.2)
floor(3.2)

%% page 26

x = 2;
x = x*2+7-12

a = 12;
B = 4;
C =(a-B)+40-a/B*10;
C
a = 12, B = 4; C =(a-B)+40-a/B*10

%% page 28

iskeyword

%% page 31

who
whos

%% page 41

x = pi / 5;
LHS = cos(x/2)^2
RHS = (tan(x) + sin(x)) / (2 * tan(x))

R1 = 16; R2 = 6.5;R3 = 12; R4 = 9.5;
C1C2 = R1+R2;
C2C3 = R2+R3;
C3C4 = R3+R4;
C1C4 = R1+R4;
C1C3 = R1+R3;

alpha = acos((C1C2^2 + C1C3^2 - C2C3^2) / (2*C1C2*C1C3));
Beta = acos((C1C3^2 + C1C4^2 - C3C4^2) / (2*C1C3*C1C4));
gamma = alpha+Beta;
C2C4 = sqrt(C1C2^2 + C1C4^2 - 2*C1C2*C1C4*cos(gamma))

k = 0.45;
Ts = 38;
T0 = 120;
t = 3;
T = round(Ts + (T0-Ts)*exp(-k*t))

format short g
P = 5000;
ta= 17;
r=0.085;
n = 12;
B = P*(1+r)^(ta)
t = log(B/P)/(n*log(1+r/n))
years = fix(t)
months = ceil((t-years)*12)
