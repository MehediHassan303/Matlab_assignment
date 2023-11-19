%unit step signal
clc;clear all;close all;
negative_time=-4; positive_time=4;
n=negative_time:1:positive_time;
ind=0; x1=[]; x2=[]; x_e=[]; x_o=[]; x_s=[];
for i=negative_time:1:positive_time
    ind=ind+1;
    if i==0||i>0
        x1(ind)=1;
    else
        x1(ind)=0;
    end
    
end
subplot(3,2,1)

stem(n,x1,'b*');
title('unit step signal');
grid on;
%reflected signal
ind=0;
for i=negative_time:1:positive_time
    ind=ind+1;
    if i>0
        x2(ind)=0;
    else
        x2(ind)=1;
    end
    
end
subplot(3,2,2)
stem(n,x2,'b*');
title('reflected signal');
grid on;
%even signal
x_e=(x1+x2)/2;
subplot(3,2,3)
stem(n,x_e,'b*');
title('even signal');
grid on;
%odd signal
x_o=(x1-x2)/2;
subplot(3,2,4)
stem(n,x_o,'b*');
title('odd signal');
grid on;
%sum of even and odd signal
x_s=(x_e+x_o);
subplot(3,2,5)
stem(n,x_s,'b*');
title('sum of even and odd signal');
grid on;