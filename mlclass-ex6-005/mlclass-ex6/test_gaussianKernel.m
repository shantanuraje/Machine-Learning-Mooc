function test_gaussianKernel()
% gaussianKernel.m - Gaussian kernel for SVM

    epsilon = 1e-4;

    x1 = [1 2 1]; x2 = [0 4 -1]; sigma = 2;
    sim = gaussianKernel(x1, x2, sigma);
    assert(sim, 0.324652, epsilon);

    x = gaussianKernel(sin(1:5), cos(1:5), pi);
    assert(x, 0.78886, epsilon);

endfunction
