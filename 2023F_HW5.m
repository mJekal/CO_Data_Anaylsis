%% config

%clc;clear all;
format compact;

%% Problem #1

for Testcase1 = [6*4 > 32-3, 4*3-7 < 15/3 > -1, 2*(3 < 8/4+2)^2 < (-2)^3, (5+~0) / 3 == 3- ~(10/5-2)]
    switch Testcase1
    case 0
        disp('False')
    case 1
        disp('True')
    end
end

%% Problem #2

d = 6; e = 4; f = -2;

for Testcase2 = [d+f >= e>d-e, e>d>f, e-d<=d-e==f/f, (d/e*f<f)>-1*(e-d)/f]
    switch Testcase2
    case 0
        disp('False')
    case 1
        disp('True')
    end
end

%% Problem #3

v = [-2 4 1 0 2 1 2];
w = [2 5 0 1 2 -1 3];

disp("Problem 3 - a")
for n = 1: length(v)
    switch ~v(n) == ~w(n)
         case 0
            disp('False')
         case 1
            disp('True')
    end
end

disp("Problem 3 - b")
for n = 1: length(v)
    switch w(n) >= v(n)
         case 0
            disp('False')
         case 1
            disp('True')
    end
end

disp("Problem 3 - c")
for n = 1: length(v)
    switch v(n) > ~1*w(n)
         case 0
            disp('False')
         case 1
            disp('True')
    end
end

disp("Problem 3 - d")
for n = 1: length(v)
    switch v(n) > -1*w(n)
         case 0
            disp('False')
         case 1
            disp('True')
    end
end

%% Problem #4

 v = [-2 4 1 0 2 1 2];
 w = [2 5 0 1 2 -1 3];

 pb4_u = v(find(v<=w))

%% Problem #5

for Testcase5 = [0|7&9&-3, 7 > 6 & ~0 <=2, ~4<5|0>=12/6, -7<-5<-2&2+3<=15/3]
    switch Testcase5
    case 0
        disp('Zero')
    case 1
        disp('Nonzero')
    end
end

%% Problem #6

row = 4;
col = 6;

pb6_A = zeros(row,col);

for i = 1:row
    for j = 1:col
       pb6_A(i,j) = 2 * i - 3 * j ;
    end
end

pb6_A

%% Problem #7

matrix7 = randi([-20 20], [1,30])

pb7 = 0;
for i = 1:length(matrix7)
    if rem(matrix7(i),3) == 0
        pb7 = pb7 + matrix7(i);
    end
end

pb7

%% Problem #8

% vec8 = input('vector? ');

vec8 = randi([-10 20], [1 19])

for i = 1:length(vec8)
    if vec8(i)>0
        vec8(i) = vec8(i)*2;
    elseif vec8(i) < 0
        vec8(i) = vec8(i)*3;
    end
end

revised_vec8 = vec8
    
%% Problem #9

vec9 = randi([-15 20],1,25);
entered = vec9
cnt = 0;

for i = 1 : length(vec9)
    if vec9(i) < 0
        cnt = cnt + 1;
        while vec9(i) <= 0 
        vec9(i) = randi([-15 20]);
        end
    end
end

modified = vec9
fprintf('The number of elemented factor is %i.\n',cnt)

%% Problem #10

NYC = [33 33 18 29 40 55 19 22 32 37 58 54 51 52 45 41 45 39 36 45 33 18 19 19 28 34 44 21 23 30 39];
DEN = [39 48 61 39 14 37 43 38 46 39 55 46 46 39 54 45 52 52 62 45 62 40 25 57 60 57 20 32 50 48 28];

avg_NYC = sum(NYC) / length(NYC);
avg_DEN = sum(DEN) / length(DEN);

fprintf('10-(a)\n')
fprintf('The average temperature NYC is %i.\n', round(avg_NYC));
fprintf('The average temperature DEN is %i.\n', round(avg_DEN));
fprintf('\n');
fprintf('10-(b)\n')
fprintf('The number of days that the temperature above the average in NYC is %i.\n', length(find(NYC>avg_NYC)));
fprintf('The number of days that the temperature above the average in DEN is %i.\n', length(find(DEN>avg_DEN)));
fprintf('\n');
fprintf('10-(c)\n')
fprintf('The number of days is %i.\n', length(find(DEN>NYC)));

%% Problem #11

row_ = 6;
base = eye(row_);
base(:,1) = 1;

for i = 3:row_
    for j = 2:row_
        base(i,j) = base(i-1,j-1) + base(i-1,j);
    end
end

base

%% Problem #12

tribo = [0 1 1];

for i = 4:25
    tribo(i) = tribo(i-3) + tribo(i-2) + tribo(i-1);
end

tribo

%% Problem #13

fibo = [1 1];

format long

for vec13 = [10 , 50, 100]
    for i = 3:vec13
        fibo(i) = fibo(i-1) + fibo(i-2);
    end
    fprintf('If n = %i\n', vec13)
    Psi = sum(1./fibo)
    fprintf('\n');
end
    
%% Problem #14

format long

for Testcase14 = [10, 100, 1000]
    s = 0;
    for i = 0 :Testcase14
        s = s + (-1)^i /  (2*i + 1)^3;
    end
    fprintf('If n = %i\n' , Testcase14)
    PI = nthroot(32 * s,3)
    fprintf('\n');
end


%% Problem #15

format long

for Testcase15 = [5, 10, 40]
    numerator(1) = sqrt(2);
    term = numerator(1) / 2;
    for i = 2 : Testcase15
        numerator(i) = sqrt(numerator(i-1) + 2);
        term = term * numerator(i) / 2;
    end
    fprintf('if n = %i\n', Testcase15);
    Pi = 2 / term
    fprintf('\n');
end

%% Problem #16

original = randi([10 30], 1, 20)

for i = 1:30
    IsoddChangedtoEven = 0;
    for j = 1:20
        if rem(original(j), 2) ~= 0
            original(j) = randi([10 30]);
            IsoddChangedtoEven = 1;          
        end
    end
    if IsoddChangedtoEven == 0
        break;
    end
end

changed = original
fprintf('The nubmer of loop iterations were needed is %i\n', i-1)

%% Problem #17

format short g;

x = [9 -1.5 13.4 13.3 -2.1 4.6 1.1 5 -6.1 10 0.2];

for i = 2:length(x)
    for j = 1 : i-1  
        if x(i) < x(j)
            temp = x(j);
            x(j) = x(i);
            x(i) = temp;
        end
    end
end

x

%% Problem #18

col_ = 1;
for i = 1:48
    for j = i+1:49
        for k = j+1:50
            if i^2 + j^2 == k^2
                pb18_matrix(col_,:) = [i, j, k];
                col_ = col_ + 1;
            end
        end
    end
end

pb18_matrix

%% Problem #19

for i = 100:999
    sum19 = 0;
    mul = 1;
    temps = i;
    while temps > 0
        sum19 = sum19 + rem(temps,10);
        mul = mul * rem(temps,10);
        temps = floor(temps / 10);
        %fprintf('%i %i %i %i\n', sum19,mul,temps,i)
    end
    %fprintf('%i %i\n', sum19, mul)
    if sum19 * 6 == mul
        fprintf('%i\n', i)
    end
end


%% Problem #23

count = 1;
num = 6;
ansvec = zeros(1, 4); 

while count <= 4 
    sum23 = 0;
    for j = 1:num-1
        if rem(num,j) == 0
            sum23 = sum23 + j;
        end
    end
    if sum23 == num
        ansvec(count) = num;
        count = count + 1;
    end
    num = num + 1;
end

ansvec

%% Problem #24

Score = [72 81 44 68 90 53 80 75 74 65 50 92 85 69 41 73 70 86 61 65 79 94 69];

Av = round(mean(Score));
S = round(std(Score));

for i = 1:length(Score)
    if Score(i) > Av + 1.3*S
        fprintf('%i%% grade A\n', Score(i))
    elseif  Av + 0.5*S < Score(i) & Score(i) < Av + 1.3*S
        fprintf('%i%% grade B\n', Score(i))
    elseif  Av - 0.5*S < Score(i) & Score(i) < Av + 0.5*S
        fprintf('%i%% grade C\n', Score(i))
    elseif  Av - 1.3*S < Score(i) & Score(i) < Av - 0.5*S
        fprintf('%i%% grade D\n', Score(i))
    elseif  Score(i) < Av - 1.3*S
        fprintf('%i%% grade F\n', Score(i))
    end
end

%% Problem #25

format long 

Val_A = [2, 6.3];
Val_X = [3.5, 1.7];

for i = 1:length(Val_A)
    a = Val_A(i);
    xx = Val_X(i);
    clear SS;
    SS(1) = 1;
    for n = 2 : 1001
        Cn = log(a)^(n-1) / factorial(n-1) * xx^(n-1);
        SS(n) = SS(n-1) + Cn;
        if abs((SS(n) - SS(n-1))/SS(n-1)) < 0.000001
            break;
        end
    end
    fprintf('If a=%.1f, x=%.1f\n', a, xx)
    SS(length(SS))
end

%% Problem #28

format default

% W = input('weight? ');
% H = input('height? ');

W = 180; H = 6 * 12 + 2; 
BMI = 703 * W / H^2;
BMI = round(BMI,1);

if BMI < 18.5
    class = 'Underweight';
elseif BMI < 24.9
    class = 'Normal';
elseif BMI < 29.9
    class = 'Overweight';
elseif BMI >= 30
    class = 'Obese';
end


fprintf('Your BMI value is %.1f, which classifies you as %s\n', BMI, class)

W = 150; H = 5 * 12 + 1; 
BMI = 703 * W / H^2;
BMI = round(BMI,1);

if BMI < 18.5
    class = 'Underweight';
elseif BMI < 24.9
    class = 'Normal';
elseif BMI < 29.9
    class = 'Overweight';
elseif BMI >= 30
    class = 'Obese';
end


fprintf('Your BMI value is %.1f, which classifies you as %s\n', BMI, class)

%% Problem #29

% types = input('type? ');
% days = input('day? ');
% miles = input('mile? ');

types = {'Sedan', 'SUV', 'Sedan'};
days = [10, 32, 3];
miles = [769, 4056, 511];

for Testcase29 = 1:3
    Type = types{Testcase29};
    Day = days(Testcase29);
    Mile = miles(Testcase29);

    switch Type
        case 'Sedan'
            if Day <= 6
                DailyRate = 79;
                AdiitionMile = 0.69;
            elseif Day <= 29
                DailyRate = 69;
                AdiitionMile = 0.59;
            elseif Day >= 30
                DailyRate = 59;
                AdiitionMile = 0.49;
            end
        case 'SUV'
            if Day <= 6
                DailyRate = 84;
                AdiitionMile = 0.74;
            elseif Day <= 29
                DailyRate = 74;
                AdiitionMile = 0.64;
            elseif Day >= 30
                DailyRate = 64;
                AdiitionMile = 0.54;
            end
    end

    if Mile <= Day * 80
        cost = DailyRate * Day;
    else
        if Day <= 6
            cost = DailyRate * Day + (Mile - Day * 80) * AdiitionMile;
        elseif Day <= 29
            cost = DailyRate * Day + (Mile - Day * 100) * AdiitionMile;
        else
            cost = DailyRate * Day + (Mile - Day * 120) * AdiitionMile;
        end
    end

    fprintf('If Type = %s, Day = %d, Mile = %d,\n', Type, Day, Mile);
    fprintf('Cost = %.1f\n',  cost);
end


%% Problem #33

format short

for testCase33 = 1:3
    switch testCase33
        case 1
            area = 55;
            cur = 'in^2';
            convert = 'cm^2';
        case 2
            area = 2400;
            cur = 'ft^2';
            convert = 'm^2';
        case 3
            area = 300;
            cur = 'cm^2';
            convert = 'yd^2';
    end

    switch cur
        case 'm^2'
            area = area;
        case 'cm^2'
            area = area / 10^4;
        case 'in^2'
            area = area / 1550;
        case 'ft^2'
            area = area / 10.76391;
        case 'yd^2'
            area = area / 1.19599;
        case 'acre'
            area = area / 0.000247;
    end

    switch convert
        case 'm^2'
            area = area;
        case 'cm^2'
            area = area * 10^4;
        case 'in^2'
            area = area * 1550;
        case 'ft^2'
            area = area * 10.76391;
        case 'yd^2'
            area = area * 1.19599;
        case 'acre'
            area = area * 0.000247;
    end

    fprintf('problem 33 - %d: E = %f %s\n', testCase33, area, convert);
end
