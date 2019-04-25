function C=make_data_4_8()
%  ��������BP,RBF,SVM��������
pats=input('�������ݵĸ��� pats=');
if floor(pats/2)*2 ~= pats,
    disp('Number of patterns should be equal - try again!'); 
    return
end
f=pats/2;
% ���ɵ�һ������
C1=randn(f,2);
C1(:,3)=ones(f,1)*.95;
C1(:,4)=ones(f,1)*.05;
C1(:,5)=zeros(f,1);
for i=1:f
    RC1(i,i)=(1/2*pi)*exp((-1/2*pi)*(norm(C1(i,1:2)-zeros(1,2)))^2);
end
% ��һ�����ݵĸ����ܶȺ���
mesh(C1(:,1),C1(:,2),RC1(:,:));
%�����ɵڶ�������
C2=randn(f,2);
C2=C2*2;
C2(:,1)=C2(:,1)+2;
C2(:,3)=ones(f,1)*.05;
C2(:,4)=ones(f,1)*.95;
C2(:,5)=ones(f,1)*1;
for i=1:f
    RC2(i,i)=(1/2*pi*4)*exp((-1/2*pi)*(norm(C2(i,1:2)-[2 0])^2));
end
figure
%���ڶ������ݵĸ����ܶȺ���
mesh(C2(:,1),C2(:,2),RC2(:,:));
figure
plot(C1(:,1),C2(:,2),'*');
axis([-4 10 -5.5 5.5])
figure
plot(C2(:,1),C2(:,2),'o');
axis([-4 10 -5.5 5.5])
figure
plot(C1(:,1),C2(:,2),'*');
axis([-4 10 -5.5 5.5])
hold on
plot(C2(:,1),C2(:,2),'o');
axis([-4 10 -5.5 5.5])

% shuffle them up
H=[C1' C2']';
[y i]=sort(rand(f*2,1));
C=H(i,:);

