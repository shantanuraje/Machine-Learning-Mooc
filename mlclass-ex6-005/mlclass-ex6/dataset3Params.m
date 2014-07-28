function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C = 1;
%sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_vect = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
sigma_vect = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

m = size(C_vect,1);
n = size(sigma_vect,1);
answer =[]; 

for i=1:m
  for j=1:n
    model= svmTrain(X, y, C_vect(i), @(x1, x2) gaussianKernel(x1, x2,sigma_vect(j)));
    predictions = svmPredict(model,Xval);
    predictionError(i,j) = mean(double(predictions ~= yval)); 
    answer =  [answer;C_vect(i) sigma_vect(j) predictionError(i,j)] ;
  end
end
 
 [min_val min_ind] = min(answer(:,3));
 C = answer(min_ind,1);
 sigma = answer(min_ind,2);   
       



% =========================================================================

end
