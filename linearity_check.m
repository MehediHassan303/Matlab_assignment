clc;close all; clear all;
fs=100;
ts=1/fs;
a=1;b=1;Fc_1=1;Fc_2=9;
ind=1; x1=[]; x2=[]; x3=[];
for n=0:fs
    x1(ind)=a*sin(2*pi*Fc_1*n*ts);
    x2(ind)=b*sin(2*pi*Fc_2*n*ts);
    ind=ind+1;
end
x3=x1+x2;
t=0:fs;
y1=[];y2=[];y3=[];
y1=-(x1/2); y2=-(x2/2); y3=-(x3/2);
ys=y1+y2;
subplot(4,1,1);
plot(t,ys,'b--*');grid on;
title('plot of ys');

subplot(4,1,2);
plot(t,y3,'b--*');grid on;
%d=ys-y3;
d=sum(abs(ys-y3));
subplot(4,1,3);
plot(t,d,'b--*');grid on;
title('plot of d');
fprintf('linearity checked: %ld\n',d);

if d==0
    disp('linear');
end 

