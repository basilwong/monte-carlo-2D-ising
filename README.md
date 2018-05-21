# Monte Carlo Simulation of the 2D Ising model

## Summary

Explores the properties of the generalized Ising Model in 2 dimensions. The spins are arranged in a square lattice and interact with the nearest neighbours only. 
Periodic boundardary conditions are imposed in both directions. 

## Function Input Variables

The ising2D.m uses the Monte Carlo algorithm to simulate the behaviour of a General 2D Ising Model under specified conditions. If the plot flag is set to 1 then 
it will show the real time change of the cell matrix over time. 

J - relative coupling between cells

T - relative temperature of the environment

N - controls the size of the NxN matrix of cells

plot_flag - 1 to have the script plot the cell matrix evolution in real time

![alt text](https://raw.githubusercontent.com/basilwong/monte-carlo-2D-ising/master/figures/real-time-ising.PNG)
