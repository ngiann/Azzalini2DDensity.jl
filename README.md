# Azzalini2DDensity

[![Build Status](https://github.com/ngiann/Azzalini2DDensity.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ngiann/Azzalini2DDensity.jl/actions/workflows/CI.yml?query=branch%3Amain)


```
using Azzalini2DDensity, PyPlot

α       = 5*2*(rand(6).-0.5)
f, logf = flexibleDensity2D()

range = -3.0:0.01:3.0

xgrid = zeros(length(range), length(range))
ygrid = zeros(length(range), length(range))
dens  = zeros(length(range), length(range))

for (i,x) in enumerate(range)
    for (j,y) in enumerate(range)
        xgrid[i,j] = x
        ygrid[i,j] = y
        dens[i,j]  = f([x;y], α)
    end
end

cla()
contourf(xgrid, ygrid, dens)
```