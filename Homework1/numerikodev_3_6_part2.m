clc;
clear;


% Calculating as a 1/e^x
% Firstly I calculated e^x .Then convert it to /e^x

e = exp(1)
Realvalue = e^(-5)

Step_variable_ex = zeros(20,1);

%approximation of e^x
Approximation_ex = zeros(20,1);

%approximation of result is 1/e^x  = 1/appoximaton_ex

Approximation_result = zeros(20,1);
Relative_error = zeros(20,1);


for i = 1:20
    if(i==1)
        Step_variable_ex(1) = 1;
        Approximation_ex(1) = 1;
        Approximation_result(1) = 1;
        Relative_error(1) = ( ( Realvalue-Approximation_result(1) ) / Realvalue ) * 100;
    else
        Step_variable_ex(i) = ( 5^(i-1) ) / (factorial(i-1) );
        Approximation_ex(i) = Approximation_ex(i-1) + Step_variable_ex(i);
        Approximation_result(i) = 1 / Approximation_ex(i);
        Relative_error(i) = ( ( Realvalue - Approximation_result(i) ) / Realvalue ) * 100; 
    end

end
