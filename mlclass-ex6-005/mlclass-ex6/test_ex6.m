%!test test_sanity()

% tests from https://class.coursera.org/ml-005/forum/thread?thread_id=2443

% 1 / 4	Gaussian Kernel
%!test test_gaussianKernel()

% if you have ex6 error: 'get: unknown hggroup property Color'
% read this https://class.coursera.org/ml-005/forum/thread?thread_id=2774#post-11496
% or just replace 'contour(...' with 'contour(X1, X2, vals, [1 1], 'LineColor', 'b');'
% in the file visualizeBoundary.m

% 2 / 4	Parameters (C, sigma) for Dataset 3
% Note: for passing this tests you have to modify dataset3Params function!
% See test_dataset3Params.m for details.
%!test test_dataset3Params()

% 3 / 4	Email Preprocessing
%!test test_processEmail()

% 4 / 4	Email Feature Extraction
%!test test_emailFeatures()
