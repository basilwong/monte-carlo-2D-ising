% Calculates and plots the thermaliation times as N is increased.

thermal_times = zeros(1,36);
% N is increased by 2 from 10 to 80.
for N = 10:2:80
    times = zeros(1,30);
    % The average of thirty thermalization times is taken for each N.
    for i = 1:1:30
        times(i) = thermalization(3,N,1);
    end
    
    thermal_times((N/2)-4) = mean(times);
end

plot(10:2:80,thermal_times);
xlabel('N')
ylabel('Approximate Thermalization Time(Steps)')
        