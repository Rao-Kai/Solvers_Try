cvx_begin
    a=[1;0;1;-1];
    d=length(a);
    D=diag(a);
    variable x(d);
    minimize(norm(x,1)+sum((D*x-a).*(D*x-a)))
cvx_end
display(x)
