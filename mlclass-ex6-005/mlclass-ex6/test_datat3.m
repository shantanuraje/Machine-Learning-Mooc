[C, sigma, error_master] = dataset3Params(X = [sin(1:1000)' cos(1:1000)'], y =  floor(abs(sin(1:1000) + 0.5))', Xval = [cos(1:1000)' sin(1:1000)'], yval = floor(abs(cos(1:1000) + 0.8))')
