% Define file names for latencies for each curve (participant)
% Define file names for latencies for each curve (participant)
latency_files = {'workload_50000/workload_50000_N6/0_endToEnd.txt','workload_50000/workload_50000_N5/0_endToEnd.txt','workload_50000/workload_50000_N4/0_endToEnd.txt','workload_50000/workload_50000_N3/0_endToEnd.txt','workload_50000/workload_50000_N2/0_endToEnd.txt','workload_50000/workload_50000_N1/0_endToEnd.txt',...
                 'workload_100000/workload_100000_N6/0_endToEnd.txt','workload_100000/workload_100000_N5/0_endToEnd.txt','workload_100000/workload_100000_N4/0_endToEnd.txt','workload_100000/workload_100000_N3/0_endToEnd.txt','workload_100000/workload_100000_N2/0_endToEnd.txt','workload_100000/workload_100000_N1/0_endToEnd.txt',...
                 'workload_300000/workload_300000_N6/0_endToEnd.txt','workload_300000/workload_300000_N5/0_endToEnd.txt','workload_300000/workload_300000_N4/0_endToEnd.txt','workload_300000/workload_300000_N3/0_endToEnd.txt','workload_300000/workload_300000_N2/0_endToEnd.txt','workload_300000/workload_300000_N1/0_endToEnd.txt',...
                 'workload_600000/workload_600000_N6/0_endToEnd.txt','workload_600000/workload_600000_N5/0_endToEnd.txt','workload_600000/workload_600000_N4/0_endToEnd.txt','workload_600000/workload_600000_N3/0_endToEnd.txt','workload_600000/workload_600000_N2/0_endToEnd.txt','workload_600000/workload_600000_N1/0_endToEnd.txt',...
                 'workload_900000/workload_900000_N6/0_endToEnd.txt','workload_900000/workload_900000_N5/0_endToEnd.txt','workload_900000/workload_900000_N4/0_endToEnd.txt','workload_900000/workload_900000_N3/0_endToEnd.txt','workload_900000/workload_900000_N2/0_endToEnd.txt','workload_900000/workload_900000_N1/0_endToEnd.txt', ...
                 'workload_1200000/workload_1200000_N6/0_endToEnd.txt','workload_1200000/workload_1200000_N5/0_endToEnd.txt','workload_1200000/workload_1200000_N4/0_endToEnd.txt','workload_1200000/workload_1200000_N3/0_endToEnd.txt','workload_1200000/workload_1200000_N2/0_endToEnd.txt','workload_1200000/workload_1200000_N1/0_endToEnd.txt',...
                 'workload_1500000/workload_1500000_N6/0_endToEnd.txt','workload_1500000/workload_1500000_N5/0_endToEnd.txt','workload_1500000/workload_1500000_N4/0_endToEnd.txt','workload_1500000/workload_1500000_N3/0_endToEnd.txt','workload_1500000/workload_1500000_N2/0_endToEnd.txt','workload_1500000/workload_1500000_N1/0_endToEnd.txt',...
                 'workload_1800000/workload_1800000_N6/0_endToEnd.txt','workload_1800000/workload_1800000_N5/0_endToEnd.txt','workload_1800000/workload_1800000_N4/0_endToEnd.txt','workload_1800000/workload_1800000_N3/0_endToEnd.txt','workload_1800000/workload_1800000_N2/0_endToEnd.txt','workload_1800000/workload_1800000_N1/0_endToEnd.txt',...
                 'workload_2100000/workload_2100000_N6/0_endToEnd.txt','workload_2100000/workload_2100000_N5/0_endToEnd.txt','workload_2100000/workload_2100000_N4/0_endToEnd.txt','workload_2100000/workload_2100000_N3/0_endToEnd.txt','workload_2100000/workload_2100000_N2/0_endToEnd.txt','workload_2100000/workload_2100000_N1/0_endToEnd.txt',...
                 'workload_2400000/workload_2400000_N6/0_endToEnd.txt','workload_2400000/workload_2400000_N5/0_endToEnd.txt','workload_2400000/workload_2400000_N4/0_endToEnd.txt','workload_2400000/workload_2400000_N3/0_endToEnd.txt','workload_2400000/workload_2400000_N2/0_endToEnd.txt','workload_2400000/workload_2400000_N1/0_endToEnd.txt',...
                 'workload_2700000/workload_2700000_N6/0_endToEnd.txt','workload_2700000/workload_2700000_N5/0_endToEnd.txt','workload_2700000/workload_2700000_N4/0_endToEnd.txt','workload_2700000/workload_2700000_N3/0_endToEnd.txt','workload_2700000/workload_2700000_N2/0_endToEnd.txt','workload_2700000/workload_2700000_N1/0_endToEnd.txt',...
                 'workload_3000000/workload_3000000_N6/0_endToEnd.txt','workload_3000000/workload_3000000_N5/0_endToEnd.txt','workload_3000000/workload_3000000_N4/0_endToEnd.txt','workload_3000000/workload_3000000_N3/0_endToEnd.txt','workload_3000000/workload_3000000_N2/0_endToEnd.txt','workload_3000000/workload_3000000_N1/0_endToEnd.txt',
                };



workload_values = [50000, 100000, 300000, 600000, 900000, 1200000, 1500000, 1800000, 2100000, 2400000, 2700000, 3000000] / 1e3; % Custom workload values
num_participants = 6; 

latency_N6 = zeros(1, length(workload_values));
std_N6 = zeros(1, length(workload_values));

latency_N5 = zeros(1, length(workload_values));
std_N5 = zeros(1, length(workload_values));

latency_N4 = zeros(1, length(workload_values));
std_N4 = zeros(1, length(workload_values));

latency_N3 = zeros(1, length(workload_values));
std_N3 = zeros(1, length(workload_values));

latency_N2 = zeros(1, length(workload_values));
std_N2 = zeros(1, length(workload_values));

latency_N1 = zeros(1, length(workload_values));
std_N1 = zeros(1, length(workload_values));




% Loop over each workload
for i = 1:length(workload_values)
    % Loop over each participant
    for j = 1:num_participants
        % Load latency data
        latency = load(latency_files{(i-1)*num_participants + j});

        % Compute average latency and store in the corresponding array
        switch j
            case 1
                latency_N6(i) = mean(latency)
                std_N6(i) = std(latency)
           case 2
                latency_N5(i) = mean(latency)
                std_N5(i) = std(latency)

           case 3
                latency_N4(i) = mean(latency)
                std_N4(i) = std(latency)

           case 4
                latency_N3(i) = mean(latency)
                std_N3(i) = std(latency)

           case 5
                latency_N2(i) = mean(latency)
                std_N2(i) = std(latency)

           case 6
                latency_N1(i) = mean(latency)
                std_N1(i) = std(latency)
        end
    end
end

figure; 
hold on;
errorbar(workload_values, latency_N6, std_N6, 'r-', 'DisplayName', '6 noder');
errorbar(workload_values, latency_N5, std_N5, 'b-', 'DisplayName', '5 noder');
errorbar(workload_values, latency_N4, std_N4, 'y-', 'DisplayName', '4 noder');
errorbar(workload_values, latency_N3, std_N3, 'c-', 'DisplayName', '3 noder');
errorbar(workload_values, latency_N2, std_N2, 'k-', 'DisplayName', '2 noder');
errorbar(workload_values, latency_N1, std_N1, 'g-', 'DisplayName', '1 noder');


xlabel('Workload (10^{3}) (samples)');
ylabel('Average Latency (s)');
legend('show');
title('Workload vs End-To-End latency');
grid on;