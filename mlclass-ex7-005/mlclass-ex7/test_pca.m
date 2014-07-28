function test_pca()
% 3 / 5	PCA (pca.m)

    epsilon = 1e-4;

    X = reshape(cos(1:4), 2, 2);
    [U S] = pca(X);
    assert(U, [-0.25175 0.96779
        0.96779 0.25175], epsilon);
    assert(S, [0.73786  0
        0   0.19836], epsilon);

    X = reshape(tan(1:21), 7, 3);
    [U S] = pca(X);
    a = [-5.1432e-03  -6.7329e-01   7.3936e-01
          9.9997e-01  -7.1475e-03   4.4732e-04
          4.9834e-03   7.3934e-01   6.7331e-01];
    assert(U, a, epsilon);
    a = [7308.0531           0           0
                 0      3.5655           0
                 0           0      2.1339];
    assert(S, a, epsilon);

endfunction
