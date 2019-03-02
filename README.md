

# Monte Carlo Simulation of the 2D Ising model

## Summary

Explores the properties of the generalized Ising Model in 2 dimensions. The spins are arranged in a square lattice and interact with the nearest neighbours only. 
Periodic boundardary conditions are imposed in both directions. 

## ising2D Function Input Variables

The ising2D.m uses the Monte Carlo algorithm to simulate the behaviour of a General 2D Ising Model under specified conditions. If the plot flag is set to 1 then 
it will show the real time change of the cell matrix over time. 

T = Temperature

N = linear lattice size

J = Ising coupling

plot_flag - 1 to have the script plot the cell matrix evolution in real time

### Figure of real time Ising Model(J = 1, T = 3, N = 40)

![alt text](https://raw.githubusercontent.com/basilwong/monte-carlo-2D-ising/master/figures/real-time-ising.PNG)

## tempChange and T_C_investigation

These scripts graph the energy, magnetization, heat capacity, and magnteic susceptibility as temperature changes. The difference between them is that T_C_investigation.m focuses more on the range around the critical temperature. 

## Thermalization

The thermalization time is how long it takes for the algorithm to reach an equilibrium. 

thermalization_relationship plots the thermalization time of the simulated ising models as the value of N is increased. This script is dependant on the thermalization.m script. 

### Calculation for initial model energy:

<a href="https://www.codecogs.com/eqnedit.php?latex=E_m&space;=&space;-J\sigma_m\sum_n{\sigma_n}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?E_m&space;=&space;-J\sigma_m\sum_n{\sigma_n}" title="E_m = -J\sigma_m\sum_n{\sigma_n}" /></a>

### Optimization for Metropolis Algorithm

Predetermined all the possible probabilities for the Metropolis algorithm. This way the code does not have to execute the relatively taxing ‘exp’ function every iteration.

![alt text](https://raw.githubusercontent.com/basilwong/monte-carlo-2D-ising/master/figures/metropolis-optimization.JPG)

### Equation for calculating magnetic susceptibility: 

<a href="https://www.codecogs.com/eqnedit.php?latex=X&space;=&space;\frac{<M^2>&space;-&space;<M>^2}{T}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?X&space;=&space;\frac{<M^2>&space;-&space;<M>^2}{T}" title="X = \frac{<M^2> - <M>^2}{T}" /></a>

### Equation for calculating heat capacity

<a href="https://www.codecogs.com/eqnedit.php?latex=C_V&space;=&space;\frac{<E^2>&space;-&space;<E>^2}{T^2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?C_V&space;=&space;\frac{<E^2>&space;-&space;<E>^2}{T^2}" title="C_V = \frac{<E^2> - <E>^2}{T^2}" /></a>


