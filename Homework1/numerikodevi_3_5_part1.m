
%%Calculation from 1 to 10000

%Question 3.5

clc;
clear;

%Creating Variables
Realvalue = (pi^4)/90;
Approximation = zeros(10000,1);
Relative_error = zeros(10000,1);

%Assigning First Values
Approximation(1) = 1;
Relative_error(1) = ( (Realvalue-Approximation(1) ) / Realvalue ) * 100 ;

for i = 2:10000
    
    Approximation(i) = Approximation(i-1) + 1/(i^4);
    Relative_error(i) = ( (Realvalue - Approximation(i)) / Realvalue ) * 100 ;
    
end


