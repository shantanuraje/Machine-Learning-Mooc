function test_findClosestCentroids()
% 1 / 5	Find Closest Centroids (findClosestCentroids.m)

    X = reshape(tan(1:165), 15, 11);
    centroids = reshape(sec(1:121), 11, 11); centroids = centroids(1:5, :);
    idx = findClosestCentroids(X, centroids);
    a = [2
       4
       5
       1
       2
       4
       1
       4
       5
       3
       2
       4
       1
       2
       5];
    assert(idx, a);

    X = reshape(cos(1:55), 5, 11);
    centroids = reshape(sin(1:121), 11, 11); centroids = centroids(1:5, :);
    idx = findClosestCentroids(X, centroids);
    a = [4
       5
       5
       1
       2];
    assert(idx, a);

endfunction
