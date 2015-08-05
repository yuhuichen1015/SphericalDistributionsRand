clear;
mu = [0,0,1];
k=35;
N=1000;
[RandWatson] = randWatson(N, mu, k);
figure; 
scatter3(RandWatson(:,1), RandWatson(:,2), RandWatson(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);


clear;
mu = [0,0,1];
k=500;
N=1000;
[RandWatson] = randWatson(N, mu, k);
figure; 
scatter3(RandWatson(:,1), RandWatson(:,2), RandWatson(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);


clear;
mu = [0,0,1];
k=0;
N=1000;
[RandWatson] = randWatson(N, mu, k);
figure; 
scatter3(RandWatson(:,1), RandWatson(:,2), RandWatson(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);


% Generate the cover image of MATLAB central.
clear;
mu = [1,-1,-1];
mu = mu / norm(mu);
k=-15;
N=1000;
[RandWatson] = randWatson(N, mu, k);
figure; 
scatter3(RandWatson(:,1), RandWatson(:,2), RandWatson(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);
mu = [1,-1,-1];
mu = mu / norm(mu);
k=30;
N=1000;
[RandWatson] = randWatson(N, mu, k);
hold on;
scatter3(RandWatson(:,1), RandWatson(:,2), RandWatson(:,3),3, 'r', 'filled'), axis([-1 1 -1 1 -1 1]);

