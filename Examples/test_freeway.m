dt = 3.;
f0 = 1;
beta = [0.2; 0.];
v = [0.7; 0.7];
w = [0.2; 0.2];
nbar = [20.; 20.];
fbar = [3.; 3.];
rbar = [1.5; 1.5];
dmean = [2.; 2.];
dstd = [2; 2];
sys = Freeway(dt, f0, beta, v, w, fbar, nbar, rbar, dmean, dstd);
%sys = Freeway_deterministic(dt, f0, beta, v, w, fbar, nbar, rbar, dmean, dstd);
sys.set_objective(Sum(@(t, dt) -sum(sys.x(t, 3:4))+sum(sys.x(t, 1:2))));
sys.run_closed_loop(20, 0., 60.);


