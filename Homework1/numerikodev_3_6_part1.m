clc;
clear;

% Caltation as a e^-x

%First Assigning

e = exp(1)   %Euler Number
Realvalue = e^(-5)  %Desired Number
Approximation = zeros(20,1);
Relative_error = zeros(20,1);
Step_variable = zeros(20,1);


for i = 1:20
    if(i==1)
        Approximation(1)= 1;
        Relative_error(1) = ( ( Realvalue - Approximation(1) ) / Realvalue ) * 100 ;
        Step_variable(1) = 1;
    else
        Approximation(i)=Approximation(i-1) + ((-5)^(i-1)*(-1)^(i+1) )/(factorial(i-1));
        Relative_error(i)= ( ( Realvalue - Approximation(i) ) / Realvalue ) * 100 ;
        Step_variable(i) = ((-5)^(i-1)*(-1)^(i+1) )/(factorial(i-1));
    end
end
