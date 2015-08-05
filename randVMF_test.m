clear;
mu = [0,0,1];
k=35;
N=1000;
[RandVMF] = randVMF(N, mu, k);
figure; 
scatter3(RandVMF(:,1), RandVMF(:,2), RandVMF(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);

mu = [0,0,1];
k=500;
N=1000;
[RandVMF] = randVMF(N, mu, k);
figure; 
scatter3(RandVMF(:,1), RandVMF(:,2), RandVMF(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);


mu = [0,0,1];
k=5;
N=1000;
[RandVMF] = randVMF(N, mu, k);
figure; 
scatter3(RandVMF(:,1), RandVMF(:,2), RandVMF(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);


mu = [0,0,1];
k=1;
N=1000;
[RandVMF] = randVMF(N, mu, k);
figure; 
scatter3(RandVMF(:,1), RandVMF(:,2), RandVMF(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);