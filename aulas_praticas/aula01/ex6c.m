probGeral = zeros(1,5);

for pd = 0 : 5
  probGeral(pd + 1) = probSimulacao6(0.3, 5, pd, 1e5);
end

stem([0, 1, 2, 3, 4, 5], probGeral);