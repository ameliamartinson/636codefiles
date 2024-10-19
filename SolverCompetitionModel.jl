using DifferentialEquations
using Plots

# parameters
a = 0.3
b = 0.6
c = 0.9

#initial conditions
x10 = 0.3
x20 = 0.8

# final t value
tf = 20.0

x0 = [x10; x20]
tspan = (0, tf)

function xdot!(dx, x, p, t)
  dx[1] = x[1] * (1 - x[1] - a * x[2])
  dx[2] = c * x[2] * (1 - b * x[1] - x[2])
end

prob = ODEProblem(xdot!, x0, tspan)
sol = solve(prob, DP5()) #DP5 is the same algorithm as ode45
plt = plot(sol, idxs=(1, 2))
gui(plt)

readline()
