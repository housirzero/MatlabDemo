% 'r' 红色 'm' 粉红 'g' 绿色 'c' 青色
% 'b' 兰色 'w' 白色 'y' 黄色 'k' 黑色

% '-' 实线 '--' 虚线 ':' 点线 '-.' 点划线

%   显示效果是，横轴下表倾斜25度
figure(1);
grid on; hold on;
xx = {'exp1', 'exp2', 'exp3', 'exp4', 'exp5', 'exp6', 'exp7'};
y = [
    0.11	0.27	0.35
    0.34	0.31	0.47
    0.1	0.82	0.21
    0.13	0.97	0.83
    0.39	0.84	0.6
    0.13	0.97	0.83
    0.39	0.84	0.6
    ];
plot(y(:,1),'-black','LineWidth',3);
plot(y(:,2),'--black','LineWidth',3);
plot(y(:,3),'-dblack','LineWidth',3);
legend 'method-1' 'method-2' 'method-3';
xlabel('xlabel');
ylabel('ylabel');
title('标题');
set(gca,'xticklabels',xx);
rotateticklabel(gca, 25);