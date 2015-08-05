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



clear;
mu = [0,0,1];
k=-35;
N=1000;
[RandWatson] = randWatson(N, mu, k);
figure; 
scatter3(RandWatson(:,1), RandWatson(:,2), RandWatson(:,3),3, 'b', 'filled'), axis([-1 1 -1 1 -1 1]);

