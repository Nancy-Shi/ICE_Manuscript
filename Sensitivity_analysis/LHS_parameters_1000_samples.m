%% Generate a matrix to implement the LHS for ICE network model
rng default;
rndLHS = lhsdesign(1000,8);

lambda = 0 +  rndLHS(:,1) * (1 - 0);
zeta_1 = 0 +  rndLHS(:,2) * (0.2 - 0);
zeta_2 = 0 +  rndLHS(:,3) * (0.2 - 0);
zeta_3 = 0 +  rndLHS(:,4) * (0.2 - 0);
zeta_4 = 0 +  rndLHS(:,5) * (0.2 - 0);
beta_PP = 0 +  rndLHS(:,6) * (0.05 - 0);
beta_NP = 0.05 +  rndLHS(:,7) * (0.2 - 0.05);
beta_PN = 0.2 +  rndLHS(:,7) * (0.4 - 0.2);

samples = [lambda zeta_1 zeta_2 zeta_3 zeta_4 beta_PP beta_NP beta_PN];

writematrix(samples, 'LHS_parameters_1000_samples.csv');