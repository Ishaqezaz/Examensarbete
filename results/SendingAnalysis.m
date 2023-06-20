sending_files = {'workload_50000/workload_50000_N6/0_Sending.txt','workload_50000/workload_50000_N5/0_Sending.txt','workload_50000/workload_50000_N4/0_Sending.txt','workload_50000/workload_50000_N3/0_Sending.txt','workload_50000/workload_50000_N2/0_Sending.txt','workload_50000/workload_50000_N1/0_Sending.txt',...
                 'workload_100000/workload_100000_N6/0_Sending.txt','workload_100000/workload_100000_N5/0_Sending.txt','workload_100000/workload_100000_N4/0_Sending.txt','workload_100000/workload_100000_N3/0_Sending.txt','workload_100000/workload_100000_N2/0_Sending.txt','workload_100000/workload_100000_N1/0_Sending.txt',...
                 'workload_300000/workload_300000_N6/0_Sending.txt','workload_300000/workload_300000_N5/0_Sending.txt','workload_300000/workload_300000_N4/0_Sending.txt','workload_300000/workload_300000_N3/0_Sending.txt','workload_300000/workload_300000_N2/0_Sending.txt','workload_300000/workload_300000_N1/0_Sending.txt',...
                 'workload_600000/workload_600000_N6/0_Sending.txt','workload_600000/workload_600000_N5/0_Sending.txt','workload_600000/workload_600000_N4/0_Sending.txt','workload_600000/workload_600000_N3/0_Sending.txt','workload_600000/workload_600000_N2/0_Sending.txt','workload_600000/workload_600000_N1/0_Sending.txt',...
                 'workload_900000/workload_900000_N6/0_Sending.txt','workload_900000/workload_900000_N5/0_Sending.txt','workload_900000/workload_900000_N4/0_Sending.txt','workload_900000/workload_900000_N3/0_Sending.txt','workload_900000/workload_900000_N2/0_Sending.txt','workload_900000/workload_900000_N1/0_Sending.txt', ...
                 'workload_1200000/workload_1200000_N6/0_Sending.txt','workload_1200000/workload_1200000_N5/0_Sending.txt','workload_1200000/workload_1200000_N4/0_Sending.txt','workload_1200000/workload_1200000_N3/0_Sending.txt','workload_1200000/workload_1200000_N2/0_Sending.txt','workload_1200000/workload_1200000_N1/0_Sending.txt',...
                 'workload_1500000/workload_1500000_N6/0_Sending.txt','workload_1500000/workload_1500000_N5/0_Sending.txt','workload_1500000/workload_1500000_N4/0_Sending.txt','workload_1500000/workload_1500000_N3/0_Sending.txt','workload_1500000/workload_1500000_N2/0_Sending.txt','workload_1500000/workload_1500000_N1/0_Sending.txt',...
                 'workload_1800000/workload_1800000_N6/0_Sending.txt','workload_1800000/workload_1800000_N5/0_Sending.txt','workload_1800000/workload_1800000_N4/0_Sending.txt','workload_1800000/workload_1800000_N3/0_Sending.txt','workload_1800000/workload_1800000_N2/0_Sending.txt','workload_1800000/workload_1800000_N1/0_Sending.txt',...
                 'workload_2100000/workload_2100000_N6/0_Sending.txt','workload_2100000/workload_2100000_N5/0_Sending.txt','workload_2100000/workload_2100000_N4/0_Sending.txt','workload_2100000/workload_2100000_N3/0_Sending.txt','workload_2100000/workload_2100000_N2/0_Sending.txt','workload_2100000/workload_2100000_N1/0_Sending.txt',...
                 'workload_2400000/workload_2400000_N6/0_Sending.txt','workload_2400000/workload_2400000_N5/0_Sending.txt','workload_2400000/workload_2400000_N4/0_Sending.txt','workload_2400000/workload_2400000_N3/0_Sending.txt','workload_2400000/workload_2400000_N2/0_Sending.txt','workload_2400000/workload_2400000_N1/0_Sending.txt',...
                 'workload_2700000/workload_2700000_N6/0_Sending.txt','workload_2700000/workload_2700000_N5/0_Sending.txt','workload_2700000/workload_2700000_N4/0_Sending.txt','workload_2700000/workload_2700000_N3/0_Sending.txt','workload_2700000/workload_2700000_N2/0_Sending.txt','workload_2700000/workload_2700000_N1/0_Sending.txt',...
                 'workload_3000000/workload_3000000_N6/0_Sending.txt','workload_3000000/workload_3000000_N5/0_Sending.txt','workload_3000000/workload_3000000_N4/0_Sending.txt','workload_3000000/workload_3000000_N3/0_Sending.txt','workload_3000000/workload_3000000_N2/0_Sending.txt','workload_3000000/workload_3000000_N1/0_Sending.txt',
                };

workload_values = [50000, 100000, 300000, 600000, 900000, 1200000, 1500000, 1800000, 2100000, 2400000, 2700000, 3000000] / 1e3;
num_participants = 6;

sending_N6 = zeros(1, length(workload_values));
std_N6 = zeros(1, length(workload_values));

sending_N5 = zeros(1, length(workload_values));
std_N5 = zeros(1, length(workload_values));

sending_N4 = zeros(1, length(workload_values));
std_N4 = zeros(1, length(workload_values));

sending_N3 = zeros(1, length(workload_values));
std_N3 = zeros(1, length(workload_values));

sending_N2 = zeros(1, length(workload_values));
std_N2 = zeros(1, length(workload_values));

sending_N1 = zeros(1, length(workload_values));
std_N1 = zeros(1, length(workload_values));

for i = 1:length(workload_values)
    for j = 1:num_participants
        
        sending = load(sending_files{(i-1)*num_participants + j});
        switch j
            case 1
                sending_N6(i) = mean(sending)
                std_N6(i) = std(sending)
           case 2
                sending_N5(i) = mean(sending)
                std_N5(i) = std(sending)

           case 3
                sending_N4(i) = mean(sending)
                std_N4(i) = std(sending)

           case 4
                sending_N3(i) = mean(sending)
                std_N3(i) = std(sending)

           case 5
                sending_N2(i) = mean(sending)
                std_N2(i) = std(sending)

           case 6
                sending_N1(i) = mean(sending)
                std_N1(i) = std(sending)
        end
    end
end

figure; 
hold on;
errorbar(workload_values, sending_N6, std_N6, 'r-', 'DisplayName', '6 noder');
errorbar(workload_values, sending_N5, std_N5, 'b-', 'DisplayName', '5 noder');
errorbar(workload_values, sending_N4, std_N4, 'y-', 'DisplayName', '4 noder');
errorbar(workload_values, sending_N3, std_N3, 'c-', 'DisplayName', '3 noder');
errorbar(workload_values, sending_N2, std_N2, 'k-', 'DisplayName', '2 noder');
errorbar(workload_values, sending_N1, std_N1, 'g-', 'DisplayName', '1 noder');

xlabel('Workload (10^{3}) (samples)');
ylabel('Average Latency (s)');
legend('show');
title('Workload vs Sending Latency');
grid on;