%Demo of network oscillating in 44 Hz gamma band.

%initialise network:
x0=zeros(7,1);
dt=1e-4;

%run integrator:
options=odeset('AbsTol',1.e-9,'RelTol',1.e-5);
[T,Y]=ode23tb('RHS_BGTCCshare',[0:dt:1],x0,options);

%plot activity
plot(T,Y,'LineWidth',1);ax = gca; ax.FontSize = 14;
xlabel('Time (s)')
ylabel('Activity')
legend('Cortex','Thalamus','nRT','DCN','GPe','GPi','STN')
