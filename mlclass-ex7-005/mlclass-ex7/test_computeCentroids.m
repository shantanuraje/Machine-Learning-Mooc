function test_computeCentroids()
% 2 / 5	Compute Centroid Means (computeCentroids.m)

    epsilon = 1e-4;

    % one dimensional test that easily can be calculated by hand
    X = [-5; -2; 0; 2; 6; 8; 10];
    idx = [1; 1; 1; 1; 2; 2; 2];
    K = 2;
    centroids = computeCentroids(X, idx, K);
    a = [-1.25
        8];
    assert(centroids, a, epsilon);

    X = reshape(cos(1:30), 15, 2);
    idx = (1 + mod(1:15, 3))';
    K = 3;
    centroids = computeCentroids(X, idx, K);
    a = [-0.171357   0.079776
        0.141787  -0.188064
        -0.027364  -0.100211];
    assert(centroids, a, epsilon);

    X = reshape(tan(1:45), 15, 3);
    idx = (1 + mod(1:15, 5))';
    K = 5;
    centroids = computeCentroids(X, idx, K);
    a = [-1.196049   -1.433899    0.325458
        -74.894815   -0.016038    2.489811
        -0.649817    0.076355    0.703874
        -2.159746    0.056470  -25.500364
        2.650037   -0.365388    1.002920];
    assert(centroids, a, epsilon);

    X = reshape(sin(1:165), 15, 11);
    idx = (1 + mod(1:15, 3))';
    centroids = computeCentroids(X, idx, 3);
    a = [0.0775076  -0.1703131   0.1812621  -0.1050921  -0.0215877   0.1378919  -0.1879219   0.1476321   -0.0363868  -0.0923470   0.1766965
        0.1235602  -0.0016647  -0.1210309   0.1855562  -0.1608986   0.0589093   0.0713933  -0.1673825    0.1829236  -0.1105473  -0.0149608
        0.1860697  -0.1591496   0.0557384   0.0744621  -0.1688743   0.1821214  -0.1078366  -0.0182771    0.1356064  -0.1877599   0.1496715];
    assert(centroids, a, epsilon);

endfunction
