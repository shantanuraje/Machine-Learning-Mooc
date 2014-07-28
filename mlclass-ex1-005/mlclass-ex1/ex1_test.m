%Test for Machine Learning Online Class - Exercise 1: Linear Regression
 
%  Instructions
%  ------------
%
%  To test your code just type test_ex1 in command line
 
%% Initialization
clear ; close all; clc
 
function res = isDoubleEQ(d1, d2, frmt)
% frmt is sprintf placeholder like '%0.4f'
    x = sprintf(frmt, d1);
    a = sprintf(frmt, d2);
    %~ res = abs(d1 - d2) <= eps(d2);
    res = eq(x, a);
    if res
        fprintf("OK \n");
    else
        fprintf("Error \n");
    end
end
 
function res = isMatEQ(M1, M2, prec)
    res = mat2str(M1, prec) == mat2str(M2, prec);
    if res
        fprintf("OK \n");
    else
        fprintf("Error \n");
    end
end
 
%% ==================== Part 1: Basic Function ====================
 
% Complete warmUpExercise.m
fprintf('Running warmUpExercise ... \n');
X = warmUpExercise()
A = eye(5)
isMatEQ(X, A, 4);
fprintf('Program paused. Press enter to continue.\n');
pause;
 
%% =================== Part 2, 3: Compute cost, Gradient descent ===================
 
% Complete computeCost.m
fprintf('Running computeCost ...\n')
x = computeCost([1 2 3; 1 3 4; 1 4 5; 1 5 6], [7;6;5;4], [0.1;0.2;0.3])
a = 7.0175
isDoubleEQ(x, a , '%0.4f');
fprintf('Program paused. Press enter to continue.\n');
pause;
 
% Complete gradientDescent.m
fprintf('Running gradientDescent ...\n')
x = gradientDescent([1 5; 1 2; 1 4; 1 5],[1 6 4 2]',[0 0]',0.01,1000)
a = [5.2148; -0.5733]
isMatEQ(x, a, 4);
 
x = gradientDescent([3 5; 1 2; 9 4; 1 5],[1 6 4 2]',[0 0]',0.01,1000)
a = [0.2588; 0.3999]
isMatEQ(x, a, 4);
fprintf('Program paused. Press enter to continue.\n');
pause;
 
%% =================== Part 4: Feature Normalization ===================
 
% Complete featureNormalize.m
fprintf('Running featureNormalize ...\n')
 
x = featureNormalize([1 2 3]')
a = [-1; 0; 1]
isMatEQ(x, a, 4);
 
x = featureNormalize([1 2 3;6 4 2]')
a = [-1   1; 0   0; 1  -1]
isMatEQ(x, a, 4);
 
x = featureNormalize( [ 8 1 6;  3 5 7; 4 9 2 ] )
a = [1.1339   -1.0000    0.3780; -0.7559         0    0.7559; -0.3780    1.0000   -1.1339]
isMatEQ(x, a, 4);
 
x = featureNormalize([1 2 3 1;6 4 2 0;11 3 3 9;4 9 8 8]')
a = [
  -0.78335   1.16190   1.09141  -1.46571;
   0.26112   0.38730  -0.84887   0.78923;
   1.30558  -0.38730  -0.84887   0.33824;
  -0.78335  -1.16190   0.60634   0.33824]
isMatEQ(x, a, 4);
 
fprintf('Program paused. Press enter to continue.\n');
pause;
 
%% ==== Part 5, 6: Cost function, Gradient descent for Multiple Variables ==============
 
% Complete computeCostMulti.m
fprintf('Running computeCostMulti ...\n')
x = computeCostMulti( [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ], [ 2; 5; 5; 6 ], [ 0.3816;  0.7655;  0.7952 ] )
a = 6.7273
isDoubleEQ(x, a , '%0.4f');
fprintf('Program paused. Press enter to continue.\n');
pause;
 
% Complete gradientDescentMulti.m
fprintf('Running gradientDescentMulti ...\n')
x = gradientDescentMulti([3 5 6; 1 2 3; 9 4 2],[1 6 4]',[0 0 0]',0.01,1000)
a = [
   1.2123;
  -2.9458;
   2.3219]
isMatEQ(x, a, 4);
fprintf('Program paused. Press enter to continue.\n');
pause;
 
%% =================== Part 7: Normal Equations ===================
 
% Complete normalEqn.m
fprintf('Running normalEqn ...\n')
x = normalEqn([1 0; 0 2],[1 1]')
a = [
   1.00000;
   0.50000]
isMatEQ(x, a, 4);
fprintf('Program paused. Press enter to continue.\n');
pause;

