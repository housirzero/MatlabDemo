% 'r' ��ɫ 'm' �ۺ� 'g' ��ɫ 'c' ��ɫ
% 'b' ��ɫ 'w' ��ɫ 'y' ��ɫ 'k' ��ɫ

% '-' ʵ�� '--' ���� ':' ���� '-.' �㻮��

%   ��ʾЧ���ǣ������±���б25��
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
title('����');
set(gca,'xticklabels',xx);
rotateticklabel(gca, 25);