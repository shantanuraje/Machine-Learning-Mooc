function test_dataset3Params()
% dataset3Params.m - Parameters to use for Dataset 3

% Note: for passing this tests you have to modify dataset3Params function!

% for the test purposes I changed dataset3Params function signature to:
%    function [C, sigma] = dataset3Params(X, y, Xval, yval, C_vect, sigma_vect)
% and added initialization block to function:
%    if ~exist('C_vect', 'var') || isempty(C_vect)
%        C_vect = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30]; % by default
%    end
%    if ~exist('sigma_vect', 'var') || isempty(sigma_vect)
%        sigma_vect = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30]; % by default
%    end

    epsilon = 1e-4;

% long run:
    %~ X = [sin(1:1000)' cos(1:1000)'];
    %~ y =  floor(abs(sin(1:1000) + 0.5))';
    %~ Xval = [cos(1:1000)' sin(1:1000)'];
    %~ yval = floor(abs(cos(1:1000) + 0.8))';

    %~ C_vect = [0.01; 1; 3];
    %~ sigma_vect = [0.01; 1; 3];

    %~ [C, sigma] = dataset3Params(X, y, Xval, yval, C_vect, sigma_vect);
    %~ assert(C, 0.01, epsilon);
    %~ assert(sigma, 1, epsilon);

% few seconds:
    X = [sin(1:100)' cos(1:100)'];
    y =  floor(abs(sin(1:100) + 0.5))';
    Xval = [cos(1:100)' sin(1:100)'];
    yval = floor(abs(cos(1:100) + 0.8))';

    C_vect = [0.01; 1; 3; 0.0001];
    sigma_vect = [0.01; 1; 3; 0.001];

    [C, sigma] = dataset3Params(X, y, Xval, yval, C_vect, sigma_vect);
    assert(C, 0.01, epsilon);
    assert(sigma, 1, epsilon);

endfunction
