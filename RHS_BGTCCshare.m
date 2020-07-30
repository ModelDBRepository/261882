function f=RHS_BGTCCshare(s,Y)

%Parameters for gamma oscillation
w=[20   5    8    25   15    5    19    5.0   15.0   20   20    ];
ext=3.42;
tau=0.010;
e1=exp(5.2);
e2=exp(7.4);

% Inputs and weights:
Cx=w(1)*Y(2);%Cortical population Y1;+TACS
Th=w(2)*Y(1)-w(3)*Y(3)+w(4)*Y(4)-w(5)*Y(6);%Thalamic  population Y2;
RT=w(6)*Y(1);%Y3;
DCN=ext;%Y4;
GPe=w(7)*Y(7)-w(8)*Y(5);%Y5;
GPi=w(9)*Y(7);%Y6;
STN=w(10)*Y(1)-w(11)*Y(5);%Y7;

%functions to solve:
f(1)=(-Y(1)+(1/(1/e2+1)-Y(1))*(1/(1+exp(7.4-2*Cx))-1/(1+e2)))/tau;
f(2)=(-Y(2)+(1/(1/e2+1)-Y(2))*(1/(1+exp(7.4-2*Th))-1/(1+e2)))/tau;
f(3)=(-Y(3)+(1/(1/e1+1)-Y(3))*(1/(1+exp(5.2-1.3*RT))-1/(1+e1)))/tau;
f(4)=(-Y(4)+(1/(1/e2+1)-Y(4))*(1/(1+exp(7.4-2*DCN))-1/(1+e2)))/tau;
f(5)=(-Y(5)+(1/(1/e1+1)-Y(5))*(1/(1+exp(5.2-1.3*GPe))-1/(1+e1)))/tau;
f(6)=(-Y(6)+(1/(1/e1+1)-Y(6))*(1/(1+exp(5.2-1.3*GPi))-1/(1+e1)))/tau;
f(7)=(-Y(7)+(1/(1/e2+1)-Y(7))*(1/(1+exp(7.4-2*STN))-1/(1+e2)))/tau;

f=f';
end
