%% Chapter3 Mathematical operations with Arrays

%% page 3

VectA = [8 5 4]; 
VectB = [10 2 7];

vectC = VectA + VectB

A = [5 -3 8 ; 9 2 10]
B = [10 7 4; -11 15 1]

A - B

C = A + B

%% page 4

VectA = [1 5 8 -10 2];

VectA + 4

A = [6 21 -15; 0 -4 8]

A-5

VectA = [8 5 4];
VectB = [10 2 7];
A = [5 -3 8; 9 2 10]

VectA + A

%% page 7

A = [1 4 2; 5 7 3; 9 1 6; 4 2 8]
B = [6 1; 2 5; 7 3]

C = A*B

F = [1 3; 5 7]
G = [4 2; 1 6]

F*G
G*F

AV = [2 5 1]
BV = [3; 1; 4]

AV * BV
BV * AV

dot(AV,BV',1)
dot(AV,BV',2)

A = [1 3 5; 3 4 6]
B = [2 4 5; 1 2 3]

dot(A,B,1)
dot(A,B,2)

A = [1 3 5; 3 4 6]

A*5
5*A

%% page 9

eye(7)

%% page 10

A = [6 5; 3 9]

det(A)

%% page 11

A = [2 1 4; 4 1 8; 2 -1 3]

det(A)

A = [2 1 4; 4 1 8; 2 -1 3]

B = inv(A)
A*B
A*A^-1
A^-1

%% page 12

A = [4 -2 6; 2 8 2 ; 6 10 3]

det(A)

B = [8;4;0]

X = A\B
Xre = inv(A)*B
Xrere = A^-1*B

%% page 14

C = [4 2 6; -2 8 10; 6 2 3]
det(C)

D = [8 4 0]

X = D/C
Xre = D*inv(C)
Xrere = D*C^-1

%% page 17

A = [2 6 3; 5 8 4]
B = [1 4 10; 3 2 7]

A.*B
A./B
A.\B
A.^2

%% page 18

x = 1:8

y = x.^2-4.*x
y = x.^2-4*x

z = 1:2:11

y = (z.^3+5*z) ./ (4*z.^2-10)

%% page 19

XX = [0:pi/6:pi ; 2*pi:pi/6:3*pi]
YY = cos(XX)

A = [ 1 4 9 ; 16 25 36; 49 64 81]
B = sqrt(A)

%% page 20

A = [5 9 2 4; 6 8 9 10]

mean(A,1)
mean(A,2)
mean(A(1,:),1)
mean(A(1,:),2)

%% page 21

A = [1 4 10 9]
[d, n] = max(A)

AA = [5 9 2 4; 6 8 9 10]
max(AA,3)
max(AA,6)
max(AA,11)
max(AA,[],1)
max(AA,[],2)
[dd,nn] = max(AA,[],1)
[dd,nn] = max(AA,[],2)

%% page 22

A = [1 4 10 9]
[d, n] = min(A)

AA = [5 9 2 4; 6 8 9 10]
min(AA,3)
min(AA,6)
min(AA,11)
min(AA,[],1)
min(AA,[],2)
[dd,nn] = min(AA,[],1)
[dd,nn] = min(AA,[],2)

%% page 23

A = [5 9 2 4]

sum(A,1)
sum(A,2)

AA = [5 9 2 4; 6 8 9 10]
sum(AA,1)
sum(AA,2)
sum(AA,[1 2])

BB = sum(AA)
sum(BB)
sum(sum(AA))

%% page 24

A = [5 9 2 4]

sort(A,'ascend')
sort(A,'descend')
sort(A,1)
sort(A,2)
sort(A,1,'ascend')
sort(A,1,'descend')

AA = [5 9 2 4; 6 8 9 10]

sort(AA,1)
sort(AA,2)
sort(AA,1,'descend')
sort(AA,2,'descend')

%% page 25

AA = [5 9 2 4; 6 8 9 10]
median(AA,1)
median(AA,2)
median(AA,[1 2])

AA = [5 9 2 4; 6 8 9 10]
sum(AA,'all')
median(AA,'all')
mean(AA,'all')

%% page 26

AA = [5 9 2 4; 6 8 9 10]

std(AA)
std(AA,0,1)
std(AA,0,2)
std(AA,0,2)
std(AA,0,'all')
std(AA,1,'all')

AA = [5 9 2 4; 6 8 9 10;2 3 1 4; 10 3 1 4]
det(AA)

CC=[1 6 4; 2 4 -1; -1 2 5]
det(CC)

%% page 28

A = [2 4; 3 5]
B = [2 6; 4 7]
dot(A,B)
dot(A,B,2)
dot(A,B,1)

%% page 29

A = [1 3 2]; B = [2 4 5];
cross(A,B)

%% page 30

AA = [5 9 2 4; 6 8 9 10; 2 3 1 4; 10 3 1 4]
det(AA)
inv(AA)

CC = [1 6 4; 2 4 -1; -1 2 5]
det(CC)
inv(CC)

%% page 32

rand
rand(1)
rand(1,4)
rand(2)
rand(3,4)
randperm(7)

%% page 33

v = (10-(-5))*rand(1,10)-5
v = (12-4)*rand(1,10)+4

%% page 34

randi(100)
randi(100,3)
randi(100,4,5)
randi([10 100],3)
randi([10 100],2,3)

%% page 35

randn(3,3)
v = 4*randn(2,3)+50
round(v)

%% page 37

F1 = 400;
F1Angle = -20;
F2 = 500;
F2Angle = 30;
F3 = 700;
F3Angle = 143;
F1xy = F1*[cosd(F1Angle) sind(F1Angle)];
F2xy = F2*[cosd(F2Angle) sind(F2Angle)];
F3xy = F3*[cosd(F3Angle) sind(F3Angle)];

Fxtot = F1xy(1) + F2xy(1) + F3xy(1)
Fytot = F1xy(2) + F2xy(2) + F3xy(2)

Ftot = sqrt(Fxtot^2 + Fytot^2)
Ftotangle = atand(Fytot/Fxtot)

%% page 38

g = 9.81;
Mass = [2 4 5 10 20 50];
Force = [12.5 23.5 30 61 117 294];
mu = Force./(Mass*g)
mu_ave = mean(mu)

%% page 41

V1 = 20; V2 = 12; V3 = 40; R1 = 18; R2 = 10; R3 = 16; R4 = 6; R5 = 15; R6 = 8; R7 = 12; R8 = 14;
A = [-R1-R3-R2 R2 R3 0; R2 -R5-R2-R4-R7 R4 R7; R3 R4 -R6-R4-R3 R6;
    0 R7 R6 -R8-R7-R6];

B = [-V1 ;0 ;V2; -V3];

I = A\B

