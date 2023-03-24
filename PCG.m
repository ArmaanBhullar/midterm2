function [ x, niters ] =  PCG(A, b, x0)
    %UNTITLED2 Implements steepest descent method
    %   Detailed explanation goes here
    x = x0;
    r = b - A*x0;
    niters = 0;
    while vecnorm(r) > 1e-4
        if niters == 0
            p = r;
        else
            gamma = -p.' * A * r / (p.' * A * p);
            p = r + gamma * p;
        end
        alpha = p.' * r / (p.' * A * p);
        x = x + alpha * p;
        r = r - alpha * A * p;
        niters = niters + 1;
        % vecnorm(r)
    end
end