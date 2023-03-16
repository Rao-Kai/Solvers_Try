x = sdpvar(3,1);
A = [1,2,3;1,3,4];
Q = [1,0,0;0,1,0;0,0,1];
C = [1;1;1];
b = [6,9];
c = [A*x == b'];
obj = 0.5*x'*Q*x + C'*x;
optimize(c,obj);
optobj = value(obj)
optx = value(x)
