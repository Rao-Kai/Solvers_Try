cvx_begin
    c=[1;-2;1;-1];
    a=[1;1;1;1];
    d=length(c);
    variable x(d);
    minimize(c'*x)
    subject to
        a'*x == 1;
        x>=0;
%         x>=-1;
%         x<=1;
cvx_end
display(x)