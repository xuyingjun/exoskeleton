function [] = sketch(a0,a1,a2,b1,b2,t0,th,pd,pu,x,y)
axis([-50 100 -100 50]);

for i = 1:10:size(th(:,1))
    cla;
    line([a0*cosd(180-t0),0],[a0*sind(180-t0),0],'Color','black');
    line([0,a1*cosd(th(i,1))],[0,a1*sind(th(i,1))],'Color','Green');
    line([a1*cosd(th(i,1)),x(i)],[a1*sind(th(i,1)),y(i)],'Color','red');
    line([0,a1*cosd(th(i,1)) + b2*cosd(th(i,1)+th(i,2))],[0,a1*sind(th(i,1)) + b2*sind(th(i,1)+th(i,2))],'Color','blue');
    line([a0*cosd(180-t0),b1*cosd(th(i,1))],[a0*sind(180-t0),b1*sind(th(i,1))],'Color','blue');
    text((a1*cosd(th(i,1)) + b2*cosd(th(i,1)+th(i,2)))/2,a1*sind(th(i,1))+ b2*sind(th(i,1)+th(i,2))-5,num2str(pd(i)));
    text(b1*cosd(th(i,1))/2,b1*sind(th(i,1))-5,num2str(pu(i)));
    pause(0.1);
end
end