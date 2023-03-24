function [ A ] = Create_Poisson_problem_A( N )
  n = N*N;
  % Create the archtypical matrix A for an N x N Poisson problem (5-point
  % stencil.
  A = zeros(N*N, N*N);
  % Set the diagonal
  A(logical(eye(size(A)))) = 4;
  
  % Set the entries of the first sub and super diagonals
  for i = 2:n
    A(i,i-1) = -1;
  end
  for i = 1:n-1
    A(i,i+1) = -1;
  end
  
  % Set the other off-diagonal entries
  for i = 1:(n-(N))
      A(i, i + N) = -1;
  end
  for i = (N+1):n
      A(i, i - N) = -1;
  end
  
end