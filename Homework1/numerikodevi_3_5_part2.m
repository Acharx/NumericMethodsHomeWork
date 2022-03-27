
%%Calculation from 10.000 to 1

%Question 3.5

clc;
clear;

%Creating Variables
Realvalue = (pi^4)/90;
Approximation = zeros(10000,1);
Relative_error = zeros(10000,1);

%Assigning First Values
Approximation(1) = 1/(10000^4);
Relative_error(1) =( ( Realvalue - Approximation(1) ) / Realvalue ) * 100;

for i = 2:10000
    
    Approximation(i) = Approximation(i-1) + 1/((10000-i+1)^4);
    Relative_error(i) = ( (Realvalue - Approximation(i)) / Realvalue ) * 100 ;

end
