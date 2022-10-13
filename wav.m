
A=6;k=2;w=0.05;
x=0:0.15:15;
u_0=pi/8;
%E_2 = zeros(length(E_1))
for t=0:250
    E_1=A*cos(k*x-w*t)  %正号，感觉像是往负方向走
    %E_2=A*cos(k*x+w*t+u_0)
    E_2 = 0
    E=E_1+E_2
    plot(x,E_1,'r')
    hold on
    plot(x,E_2,'c')
    hold on
    plot(x,E,'k')
    hold off
    ylim([-15,15])
    title('入射波和反射波合成')
    drawnow
end
