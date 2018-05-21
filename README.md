
# Monte Carlo Simulation of the 2D Ising model

## Summary

Explores the properties of the generalized Ising Model in 2 dimensions. The spins are arranged in a square lattice and interact with the nearest neighbours only. 
Periodic boundardary conditions are imposed in both directions. 

## ising2D Function Input Variables

The ising2D.m uses the Monte Carlo algorithm to simulate the behaviour of a General 2D Ising Model under specified conditions. If the plot flag is set to 1 then 
it will show the real time change of the cell matrix over time. 

T = Temperature
N = linear lattice size
J = Ising coupling.

plot_flag - 1 to have the script plot the cell matrix evolution in real time

### Figure of real time Ising Model(J = 1, T = 3, N = 40)

![alt text](https://raw.githubusercontent.com/basilwong/monte-carlo-2D-ising/master/figures/real-time-ising.PNG)

## th
For the coupling J = 1 and temperature T = 3 plot the total energy of generated configurations as function of time, and determine the approximate time when thermalization occurs. For this function to work it is required that the ising2D function returns lists of the energies and the magnetization instead of just the averages at the end.
