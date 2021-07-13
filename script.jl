using OrdinaryDiffEq
using Debugger
f(u,p,t) = 1.01*u
u0=1/2
tspan = (0.0,1.0)
prob = ODEProblem(f,u0,tspan)
@bp
sol = solve(prob,Midpoint(),reltol=1e-8,abstol=1e-8)