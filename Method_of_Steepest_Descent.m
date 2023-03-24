function [ x, niters ] = Method_of_Steepest_Descent( A, b ,x0 )
    %UNTITLED2 Implements steepest descent method
    %   Detailed explanation goes here
    x = x0;
    r = b - A*x0;
    niters = 0;
    while vecnorm(r) > 1e-4
        p = r;
        q = A*p;
        alpha = p.' * r/ (p.' * q) ;
        x = x + alpha * p;
        r = r - alpha * q;
        niters = niters + 1;
        % vecnorm(r)
    end
end