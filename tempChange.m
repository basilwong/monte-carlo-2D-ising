% Function that graphs the energy, magnetization, heat capacity, and
% magnteic susceptibility as temperature changes. 
function tempChange(N)
    % Initialization of the lists for each value.
    EList = zeros(31,1);
    MList = zeros(31,1);
    CvList = zeros(31,1);
    XList = zeros(31,1);
    T = 2:0.02:2.6;
    for i = linspace(1,length(T),length(T))
        % Getting each value from the Ising Model function.
        [E,M,heatCapacity,magneticSusceptibility] = ising2D2(T(i),N,1);
        % Adding each of the values to its designated list.
        EList(i) = E;
        MList(i) = M;
        CvList(i) = heatCapacity;
        XList(i) = magneticSusceptibility;
    end
    
    % Plotting all the lists in the same figure.
    figure;
    subplot(2,2,1)
    plot(T,EList,'b.')
    xlabel('T')
    ylabel('Energy')
    
    subplot(2,2,2)
    plot(T,MList,'b.')
    xlabel('T')
    ylabel('Magnetization')
    
    subplot(2,2,3)
    plot(T,CvList,'b.')
    xlabel('T')
    ylabel('Heat Capacity')
    
    subplot(2,2,4)
    plot(T,XList,'b.')
    xlabel('T')
    ylabel('Magnetic Susceptibility')
    