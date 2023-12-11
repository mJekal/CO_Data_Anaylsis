%% Chapter2 Creating Arrays

%% page 3

[9 10 11 14 16 10]

[9,10,11,14,16,10]

[5;6;7;8;9;1]

[
    6
    8
    9
    10
    1
]

%% page 4

x = [1:2:13]

y = [1.5:0.1:2.1]

z = [-3:7]

xa = [21:-3:6]

%% page 5

8:-2:-3

1:10.5

%% page 6

linspace(34.5,36.7,6)

linspace(1,200)

%% page 8

[3 4 5; 6 9 8 ; 1 4 3]

[   3 4 5
    6 9 8
    1 4 3
    ]

[3,4,5,;6,9,8,;1,4,3]

%% page 9

a = 1, b = 3, c = 5

[linspace(4,7,4);5 7 10 2; a, a*b, a/c, a^2]

[linspace(4,7,4);5 7 10 2; a, a*b, a/c, a^2; 4:2:10]

%% page 10

zeros(3,5)

ones(4,7)

50*ones(4,7)

eye(4)

eye(4,1)

%% page 12

test = [linspace(4,7,4);5 7 10 2; a, a*b, a/c, a^2]

test2 = test'

%% page 13

ve = [2 4 5 10 9 7 8]

ve(3)

ve(3)+ve(5)*ve(7)

%% page 14

ma = [3 11 6 5; 4 7 10 2; 13 9 0 8]

ma(3,1)

ma(2,3)

ma(7)

ma(2,1)*ma(2,3)

%% page 15

ve = [2 4 5 10 9 7 8]

ve(:)

ve(:)'

ve(2:4)

%% page 16

A = [2 4 5 8 9 10; 0 9 8 4 5 3 ; 7 4 3 2 1 5; 10 4 3 2 8 7]

A(:,1)

A(2,:)

A(:,2:3)

A(3:4,:)

A(3:4,2:3)

A = [2 4 5 8 9 10; 0 9 8 4 5 3; 7 4 3 2 1 5; 10 4 3 2 8 7]

A([1 4], :)

A([1 4],[5 6])

%% page 17

Ve = [7 2 9]
De = [6 5 4]

[Ve De]

Ve(6) = 8

Na(7) = 9

%% page 18

E = [1 2 3 4 ; 5 6 7 8 ]

E(3,:) = [10:4:22]

K = eye(3)

G = [E K]

AW = [3 6 9; 8 5 11]

AW(4,5) = 17

BG(3,4) = 15

%% page 19

Kt = [2 8 40 65 3 55 23 16 75 80]

Kt(6) = []

Kt(3:4) = []

mtr = [5 78 4 24 9; 4 0 36 60 12; 56 13 5 89 3]

mtr(:,2:4) = []

%% page 20

A = [5 9 2 4]

length(A)

%% page 21

A = [6 1 4 0 12; 5 19 6 8 2]

size(A)
size(A,1)
size(A,2)

%% page 22

A = [5 1 6 ; 8 0 2]

B = reshape(A,3,2)

C = reshape(A,1,6)

%% page 23

ve = [7 4 2];

A=diag(ve)

B = [4 5 1; 7 8 10; 3 6 4]

C = diag(B)

%% page 24

A = [zeros(2,5); ones(2,5)]

B1(1:2,:) = zeros(2,5);
B1(3:4,:) = ones(2,5);

B1

%% page 25

A = zeros(6,6);
A(3:4,:) = 1
A(:,3:4) = 1

A = zeros(6,6)
A([3 4 9 10 13: 24 27 28 33 34]) = 1

%% page 26

A = [2 5 8 11 14 17; 3 6 9 12 15 18; 4 7 10 13 16 19; 5 8 11 14 17 20; 6 9 12 15 18 21];
B = [5 10 15 20 25 30; 30 35 40 45 50 55; 55 60 64 70 75 80];
v = [99:-1:91];

A([1 3 4 5], 3:6) = [B(1:2,1:4) ; v(5:8) ; B(3,2:5)]

%% page 27

'MATLAB'

a = 'Introduction to Matlab'

%% page 28

a = 'Introduction to Matlab'

a(3)

a(17:22)

a(17:28) = 'Oceanography'

%% page 29

aa = ['intro', 'base', 'cc']

aa = ['intro'; 'Basis']

aa = ['intro'; 'Base ' ]

%% page 30

Info = char('Matlab','Base')

Info = char('Student Name:','Seung-Tae Yoon','Grade:','A+')

x = 536
a = '536'

%% page 31

mtr=[5 78 4 24 9; 4 0 36 60 12; 56 13 5 89 3]
mtr(:,3:4) = []

mtr=[5 78 4 24 9; 4 0 36 60 12; 56 13 5 89 3]
mtr(1:2,:) = []

mtr=[5 78 4 24 9; 4 0 36 60 12; 56 13 5 89 3]
mtr(1:2,3:4) = 0

%% page 32

format short
b = [sqrt(5.2^3), 6.71*10^3, (3+5.1^2)*cosd(53), 15.8, nthroot(90,3), sin(pi/3)/tand(20)]

format short g
b = [sqrt(5.2^3), 6.71*10^3, (3+5.1^2)*cosd(53), 15.8, nthroot(90,3), sin(pi/3)/tand(20)]

format long g
b = [sqrt(5.2^3), 6.71*10^3, (3+5.1^2)*cosd(53), 15.8, nthroot(90,3), sin(pi/3)/tand(20)]