%% config

clc;clear all;
format compact

%% Problem #1

% W = input('weight?: ');
% h = input('height?: ');

W = 162;
h = 68;

BMI = round(703*W/h^2,1);

fprintf('The BMI is: %.0f.\n', BMI);

%% Problem #2

% P = input('pressure(mb)?: ');

P = 394;

H = round(145366.45*(1-(P/1013.25)^0.190289));

fprintf('The altitude is: %.0f ft.\n', H);

%% Problem #4

% halfLife = input('half life of the material?: ');
% A0 = input('current amount of the material?: ');
% t = input('years from now?: ');

halfLife = 24110;
A0 = 50;
t = 500;

k = log(2) / halfLife;
A = A0*exp(-k*t);

fprintf('The amount of the material after %.f years is %.0f lb\n', t,A);


%% Problem #6

theta = 0:10:90;

alpha = asind((1+3*cosd(theta))./sqrt((1+3*cosd(theta)).^2+(3-3*sind(theta)).^2));
F = 300 * 4.5*sind(theta) ./ (3*cosd(alpha-theta));

Table = [theta', F'];

fprintf('    Theta      F\n');
disp(Table)

%% Problem #7

% Grades = input('grades? (elements of a vector): ');

Grades = [93, 77, 51, 62, 99, 41, 82, 77, 71, 68, 100, 46, 78, 80, 83];

num = length(Grades);
avg = round(mean(Grades),1);
std = round(std2(Grades),1);

fprintf('There are %.0f grades.\n',num);
fprintf('The average grade is %.f.\n',avg);
fprintf('The standard deviation is %.f.\n',std);
 
%% Problem #9

% P = input('initial investment?: ');
% t = input('number of years?: ');
% r = input('interest rate?: ');
% n = input('the number of times per year?: ');

P = 20000;
t = 18;
r = 3.5;
n = 6;

V = P*((1 + ((r / 100) / n))^(n*t));

fprintf("The value of a $%.0f investment at a yearly interest rate of %.1f%% compounded %.0f times per year, after %.0f years is $%.2f\n", P, r, n, t, V);


%% Problem #11

format short g;

h = -500:500:10000;

p = 29.921*(1-6.8753*10^-6*h);
Tb = 49.161 * log(p) + 44.932;

table = [h' Tb'];

fprintf('       altitude   boil temp\n');
disp(table)

%% Problem #15

format default;
format compact

x = 0:5000;
Distance = 10000;
run_V = 8.6;
swim_V = 3.9;

Distance_CtoB = sqrt(3000^2+x.^2);
T = (Distance-x)./run_V + Distance_CtoB./swim_V;

[minTime, index] = min(T);

fprintf('minimizes_Distance: %.2f\n', index);


%% Problem #18

C = 13.83;
Eg = 0.67;
k = 8.62*10^-5;

xls_file = xlsread('temperature.xlsx');

sigma = exp(C-Eg./(2*k*xls_file));

Table = [xls_file sigma];

disp('Temperature    Intrinsic conductivity')
fprintf(' %5.0f %20.2f\n',Table')

%% Problem #22

Coefficient = [
    cosd(50), 1, 0, 0, 0, 0, 0, 0, 0, 0, 0;
    sind(50), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
    0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0;
    -cosd(50), 0, 0,    1, cosd(41), 0, 0, 0, 0, 0, 0;
    -sind(50), 0, 1, 0, sind(41), 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0,-cosd(41),  -1, 0, 0, 0, 1, 0;
    0, 0, 0, 0, sind(41), 0, 1, 0, 0, 0, 0;
    0,0,0,-1,0,0,0,1,cosd(37), 0,0;
    0, 0, 0, 0, 0, 0, -1, 0, -sind(37), 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0, -cosd(37), -1, 0;
    0, 0, 0, 0, 0, 0, 0, 0, sind(37), 0, 1;
];

Col = [0; 400; 0; 0; 800; 0; 1200; 0; 0; 4933; 0];
member = 1:11;
table = [member', Coefficient \ Col];
disp(table);


%% Problem #23

format short;
Coefficient = [
    cosd(28.5), 1,           0,  0,           0,           0,  0;
    sind(28.5), 0,           0,  0,           0,           0,  0;
   -cosd(28.5), 0, -cosd(58.4),  0,  cosd(58.4),  cosd(28.5),  0;
   -sind(28.5), 0, -sind(58.4),  0, -sind(58.4), -sind(28.5),  0;
             0, 0,           0, -1, -cosd(58.4),           0,  1;
             0, 0,           0,  0,           0,  sind(28.5),  0;
             0, 0,           0,  0,           0, -cosd(28.5), -1;
];

Col = [3000; -6521; -3000; 0; 0; -7479; 0];
Table = [(1:7)' Coefficient\Col];


disp('    Member     Force');
disp(Table);

%% Problem #24

coef = [
    (-1.2)^3, (-1.2)^2, -1.2, 1;
    (0.2)^3, (0.2)^2, 0.2, 1;
    2^3, 2^2, 2, 1;
    (3.5)^3, (3.5)^2, 3.5, 1;
];

col = [18.8; 5; 16; 15];

const = coef \ col;

a = const(1)
b = const(2)
c = const(3)
d = const(4)

%% Problem #25

coef = [
    (-2.5)^4, (-2.5)^3, (-2.5)^2, -2.5, 1;
    (-1.5)^4, (-1.5)^3, (-1.5)^2, -1.5, 1;
    (-0.5)^4, (-0.5)^3, (-0.5)^2, -0.5, 1;
    1^4, 1^3, 1^2, 1, 1;
    3^4, 3^3, 3^2, 3, 1;
];

col =  [-62; -7.2; 8.3; 3.7; 45.7];

const = coef \ col

a = const(1)
b = const(2)
c = const(3)
d = const(4)
e = const(5)

%% Problem #26

x = [0.15, 0.35, 0.5, 0.7, 0.85];
coef = [sqrt(x)', x', x.^2', x.^3', x.^4'];
y = [0.08909; 0.09914; 0.08823; 0.06107; 0.03421];
const = coef \ y;
a0 = const(1)
a1 = const(2)
a2 = const(3)
a3 = const(4)
a4 = const(5)

%% Problem #27

coef = [
    1, 2, 1, 1;
    2, 3, 0, 1;
    1, 4, 1, 0;
    1, 3, 2, 0;
];

col =  [5; 12; 11; 8;];
Points_Awarded = coef \ col

%% Problem #28

% coef = [
   % 1 0 0 -1 0 0 0
   % 1 0 0 0 -1 0 0
   % 0 1 0 0 0 -1 0
   %  1 0 0 0 0 0 0
%];
%col = [0;1;0;0;0;0;];
%coef \ col



%% Problem #29

F = 80:2:94;
T = [80:2:94; 80:2:94; 80:2:94; 80:2:94; 80:2:94; 80:2:94;];
R = [[50:5:75]',[50:5:75]',[50:5:75]',[50:5:75]',[50:5:75]',[50:5:75]',[50:5:75]',[50:5:75]'];

HI_ori = -42.379 + 2.04901523*T + 10.14333127*R - 0.22475541*T.*R - 0.00683783*T.^2 - 0.05481717*R.^2 + 0.00122874*T.^2.*R + 0.00085282*T.*R.^2 - 0.00000199*T.^2.*R.^2;
HI= round(HI_ori);

Table = [[50:5:75]', HI];
disp('                         Temperature (F)'); 
fprintf('      ')
fprintf(' %5.0f',F)
fprintf('\n')
disp(' Relative'); 
disp(' Humidity'); 
disp('    (%)   '); 
disp(Table)


