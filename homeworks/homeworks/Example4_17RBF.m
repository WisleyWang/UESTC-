% Example4_17RBF
% ����������ϵ�RBF����
clear all;
t=[15 15 15 18 28 29 37 37 44 50 50 60 61 64 65 65 72 75 75 82 85 91 91 97 98 125 142 142 147 147 150 159 165 183 192 195 218 218 219 224 225 227 232 232 237 246 258 276 285 300 301 305 312 317 338 347 354 357 375 394 513 535 554 591 648 660 705 723 756 768 860];
y0=[21.66 22.75 22.3 31.25 44.79 40.55 50.25 46.88 52.03 63.47 61.13 81 73.09 79.09 79.51 65.31 71.9 86.1 94.6 92.5 105 101.7 102.9 110 104.3 134.9 130.68 140.58 155.3 152.2 144.5 142.15 139.81 153.22 145.72 161.1 174.18 173.03 173.54 178.86 177.68 173.73 159.98 161.29 187.07 176.13 183.4 186.26 189.66 186.09 186.7 186.8 195.1 216.41 203.23 188.38 189.7 195.31 202.63 224.82 203.3 209.7 233.9 234.7 244.3 231 242.4 230.77 242.57 232.12 246.7];
net=newrb(t,y0,0.01,1,50,2);
y1=sim(net,t);
y2=233.84*(1-exp(-0.006042*t));
figure;
plot(t,y0,'*-',t,y1,'--',t,y2,':');
title('ѵ��������������');
xlabel('ʱ��/����');
ylabel('��״������/��');
legend('ԭʼ����','ѵ��������','ģ������');