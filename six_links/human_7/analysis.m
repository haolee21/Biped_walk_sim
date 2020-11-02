close all;
data1 = load('10290745','result').result;
data2 = load('10291204','result').result;
data3 = load('10291234','result').result;

time = linspace(0,100,length(data2.x1(1,:))*2);
figure();
sgtitle('Joint Position');
subplot(3,1,1);
hold on;
plot(time,[data2.x1(3,:),-data2.x1(4,:)-pi]);
plot(time,[data3.x1(3,:),-data3.x1(4,:)-pi]);
title('Hip');
hold off;
subplot(3,1,2);
hold on;
plot(time,[data2.x1(2,:),-data2.x1(5,:)]);
plot(time,[data3.x1(2,:),-data3.x1(5,:)]);
legend('eff ank/knee','base line');
title('Knee');
hold off;
subplot(3,1,3);
hold on;
plot(time,[data2.x1(1,:),-data2.x1(6,:)]);
plot(time,[data3.x1(1,:),-data3.x1(6,:)]);
title('Ankle');
hold off;



figure();


subplot(3,1,1);
hold on;
sgtitle('Joint Torque');
plot(time,[data2.x1(9,:),-data2.x1(10,:)]);
plot(time,[data3.x1(9,:),-data3.x1(10,:)]);
hold off;
title('Hip');
subplot(3,1,2);
hold on;
title('Knee');
plot(time,[data2.x1(8,:),-data2.x1(11,:)]);
plot(time,[data3.x1(8,:),-data3.x1(11,:)]);
legend('eff ank/knee','base line');
hold off;
subplot(3,1,3);
hold on;
title('Ankle');
plot(time,[data2.x1(7,:),-data2.x1(12,:)]);
plot(time,[data3.x1(7,:),-data3.x1(12,:)]);

hold off;