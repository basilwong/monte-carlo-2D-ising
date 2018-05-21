% For the coupling J = 1 and temperature T = 3 plot the total energy of 
% generated configurations as function of time, and determine the 
% approximate time when thermalization occurs. For this function to work it
% is required that the ising2D function returns lists of the energies and
% the magnetization instead of just the averages at the end.
% T = Temperature, N = linear lattice size, J = Ising coupling.
function thermalization_time = thermalization(T,N,J)
    %% Initialize the energy and magnetization of a 2D Isling model
    [E,M] = ising2D(T,N,J,0);
    % Eliminate all configurations before thermalization.
    Ee = E(round(N^(5/2)):end);
    % Find average energy post thermalization.
    thermalList = mean(Ee)*ones(length(E),1);
    
    thermalization_time = find(E<mean(Ee)+std(Ee) & E > mean(Ee)-std(Ee), 1, 'first');
    
%     histfit(E(thermalization_time:end))
    
%     figure; 
%     hold on
%     plot(E,'b')
%     plot(thermalList,'r')
%     ylabel('Energy')
%     xlabel('Steps')
%     title(sprintf('Energy with equilibrium. For T = %d, N = %d, J = %d', T, N, J))
%     hold off

