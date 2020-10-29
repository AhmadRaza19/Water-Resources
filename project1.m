%Project 1 - Water Resources

%%Step 1
types = ["rainfall", "lakes","aquifers","reservoirs","rivers"]; 
volumes = [119000,91000,10000000,5000,2120]; % in km^3
volumes = (volumes .* 2.641721e11); %in gallons
%%Step 2
totalFreshWater = sum(volumes);
globalWater = totalFreshWater ./ 0.005; %calculates total water in gallons
%%Step 3
fprintf('The total amount of available fresh water is %.2e gallons\n', totalFreshWater);
fprintf('The total amount of water on earth %.2e gallons\n', globalWater);
%%Step 4
percentage = (volumes ./ totalFreshWater) .* 100; %calculates percentages for each type
%%Step 5
[maxPercentage, ind] = max(percentage); %caculates largest percentage of water contribution and location in array
%%Step 6
maxSource = types(ind); %calculates which location has the largest position and assigns it
%%Step 7
disp(maxPercentage + "% of available and usable fresh comes from " + maxSource + "."); %displays final output


