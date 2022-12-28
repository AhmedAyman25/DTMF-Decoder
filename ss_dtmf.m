function [x] = ss_dtmf(number,delta,nd,np)
x =[];
Td = nd*delta; 
Tp= np*delta;
Ts=1/8000;
num = num2str(number) -'0';

for key = 1:length(num)
    tone = ss_dtmf1(num(key),Td,Ts);
    x=cat(2,x,tone);
    Pause = ss_dtmf1(12,Tp,Ts);
    x=cat(2,x,Pause);  
end
sound(x);
end
