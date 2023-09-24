
%% config

format compact

%% Problem #1

a = [9,1,3^2,7/4,0,2.25*8.5,0.8,sin(pi/8)]

%% Problem #2

format short g

b = [sqrt(5.2^3),6.71*10^3,(3+5.1^2)*cosd(53),15.8,nthroot(90,3),sin(pi/3)/tand(20)]

%% Problem #3

format default
format compact

c = [2.1*10^-2; sin(1.7*pi);28.5;2.7^(4/3);exp(3)]

%% Problem #4

d = [0.75*5.2^0.7;11.1;nthroot(60,3);tan(10*pi/11);cosd(5)^2;0.116]

%% Problem #5

format short g

x = 3.4;y=5.8;
e = [x/y,x+y,x^y,x*y,y^2,x]
 
%% Problem #6

format default
format compact

c = 4.5;d=2.8;
f = [d^2;c;c+d;c^d;d]

%% Problem #7

g = linspace(3,27,7)

%% Problem #12

Fours = linspace(4,4,9)

%% Problem #13

Sevens(1:7) = 7

%% Problem #14

P(8) = 5.9

%% Problem #15

q(6:9) = 8.1

%% Problem #16

R = [-4:3:8 14:4:30]

%% Problem #19

A = 4:3:13;
B = [14:-2:6]';

C = [B' A]
D = [A';B]

%% Problem #21

vC = 2:3:38;
vCodd=vC([1:2:13])
vCeven = vC([2:2:12])

%% Problem #22

vD = 20:4:44;
vE= 50:3:71;
vDE = [vD([2:5]), vE([4:7])]
vED = [vE(6:-1:2) vD(4:-1:1)]

%% Problem #23

vF = 5:7:61;
vFrev = vF([9:-1:1])

%% Problem #25

 B = [linspace(4,4,5) linspace(5,5,4)]

%% Problem #28

E(1:3,5) = [8:-1:6]

%% Problem #29

F(3, [3:6]) = 8:-2:2

%% Problem #30

G = [ones(3,5);zeros(3), ones(3,2)]

%% Problem #32

a = [5 8 -1 0 2];
b = [4 1 9 -2 3];
c = [-3 5 0 6 1];

pb32_a = [c;b;a]
pb32_b = [c' b' a']

%% Problem #39

G = [0.1:0.1:0.7; 10:-1:4; 0:0.2:1.2; 5:-2:-7];
Ma = G([1 3 4], [1 2 6 7])
Mb = G(1:3, [2 4 6])

%% Problem #44

pb44_a = [eye(3) eye(3)]
pb44_b([1 2], [4 5]) = ones(2)
pb44_c = [ones(3,1) zeros(3,2) [ones(1);zeros(2,1) ]]

%% Problem #45

A = eye(2)
B = ones(1,2)
C = zeros(3)
D = [C [A;B]]
