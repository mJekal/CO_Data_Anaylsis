%% config

clear;clc;
format compact

%% Problem #1

x = 1:7;
y = x.^2 - x./(x+3)

%% Problem #2

x = 1.5:0.5:4;
y = x.^4.*exp(-x)

%% Problem #3

x = -2:0.5:2;
y = (x+x.*sqrt(x+3)).*(1+2*x.^2) - x.^3

%% Problem #4

x = 15:10:65;
y = (4*sind(x)+6) ./ (cosd(x).^2 + sind(x)).^2

%% Problem #5

format short g

V = 4000:-500:1000;

r = (3*V/(4*pi)).^(1/3);
S = 4 * pi * r.^2;

r = round(r,1);
S = round(S,1);

[r; V ;S]'

%% Problem #6

u = 0.35;
theta = 5:5:35;
F = 70*u ./ (u*sind(theta) + cosd(theta))

theta_b = 5:0.01:35;
Fb = 70*u ./ (u*sind(theta_b) + cosd(theta_b));
[min_value min_index] = min(Fb);
[max_value max_index] = max(Fb);

min_value
min_theta = theta_b(min_index)

max_value
max_theta = theta_b(max_index)

%% Problem #7

n = 30;
x = 0:5:30;
L = 100000;
r = 0.06;

RR = (1+r/12);

B = L * (RR^(12*n) - RR.^(12*x)) ./ (RR^(12*n) - 1); 

[x; B]

%% Problem #8

u = [-5.6 11 -14];
length = sqrt(sum(u.^2))

%% Problem #9

u = [4, 13, -7]

Lu = sqrt(sum(u.^2))

un = u / Lu

Lun = sqrt(sum(un.^2))

%% Problem #10

u1 = [3.2 -6.8 9];
u2 = [-4, 2, 7];

th = acosd(sum(u1.*u2) / (sqrt(sum(u1.^2))*sqrt(sum(u2.^2))))

%% Problem #13

v = [1,3,5,7];
a = 3*v
b = v.^2
c = v./v
d = 6*(v./v)

%% Problem #14

v = [5 4 3 2];
a = 1./(v+v)
b = v.^v
c = v./sqrt(v)
d = v.^2./v.^v

%% Problem #15

x = 0.5:0.5:2.5;
y = 0.8 : 0.8 : 4.0;

z = x.^2 + 2*x.*y
z = x.*y.*exp(y./x) - (x.^4.*y.^3+8.5).^(1/3)

%% Problem #16

r = 1.6*10^3;
s = 14.2;
t = 1:5;
x = 2:2:10;
y = 3:3:15;

G = x.*t + r/s^2*(y.^2-x).*t
R = r*(-x.*t+y.*t.^2)/15 - s^2*(y-0.5*x.^2).*t

%% Problem #18

u1 = [2.5, 8, -5];
u2 = [-1, 6, 3];

U1U2Crs = cross(u1,u2);
U1U2CrsLen = sqrt(dot(U1U2Crs,U1U2Crs));
U1Len = sqrt(dot(u1,u1));
U2Len = sqrt(dot(u2,u2));

theta = asind(U1U2CrsLen / (U1Len * U2Len))

%% Problem #19

mass = [0.5,0.8,0.2,1.1,0.4,0.9];

x = [-10,-18,-7,5,0,25];
y = [8,6,11,12,-8,-20];
z = [32,19,2,-9,-6,8];

xs = sum(mass.*x) / sum(mass)
ys = sum(mass.*y) / sum(mass)
zs = sum(mass.*z) / sum(mass)

%% Problem #20

a = [7,-4,6];
b = [-4,7,5];
c = [5,-6,8];
LHS = cross(a,cross(b,c))
RHS = b*dot(a,c) - c*dot(a,b)

%% Problem #23

format long

n = 1:5;
sum(n.^2 ./ 2.^n)
n = 1:15;
sum(n.^2 ./ 2.^n)
n = 1:30;
sum(n.^2 ./ 2.^n)

%% Problem #26

format long

x = [1.0 0.1 0.01 0.001 0.0001];
y = 5*sin(6*x)./(4*x)

%% Problem #31

format short 

A = randi(5,3)

A.^A
A.*A
A*A-1
A./A
det(A)
inv(A)

%% Problem #33

coef = [
-2 5 7;
 3 -6 2;
 9 -3 8
];

const = [-17.5; 40.6; 56.2];

pb33 = coef \ const

%% Problem #34

coef = [
2 -4 5 -3.5 1.8 4;
-1.5 3 4 -1 -2 5;
5 1 -6 3 -2 2;
1.2 -2 3 4 -1 4;
4 1 -2 -3 -4 1.5;
3 1 -1 4 -2 -4;
];

const = [52.52; -21.1 ;-27.6; 9.16; -17.9; -16.2];

pb34 = coef \ const

%% Problem #35

coef = [
1 1 1 1 1 1
25 40 60 70 32 0
0 -1 1 0 0 0
0 1 0 1 -10 0
-1 1 1 0 0 0
1 0 1 0 -4 -4
]

const = [100000;4897000;-11000;0;0;0]

pb35 = coef\const

