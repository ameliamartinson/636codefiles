using DifferentialEquations
using Plots
using CSV
using DataFrames

exp_data = DataFrame(CSV.File("DataH1N1.dat", delim=" "))
tData = exp_data[!, 1]
IData = exp_data[!, 2] * 18234

plot(tData, IData, seriestype=:scatter, label="data")

readline()
