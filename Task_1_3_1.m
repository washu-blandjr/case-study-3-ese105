x1 = [.01 .01 .01 .01 .01];
x2 = [0 0 0 0 0];
theta1 = [-pi/25 -pi/50 0 pi/50 pi/25];
y = [0 0 0 0 0];
theta2 = [0 0 0 0 0];
Ray1 = [x1; theta1; y; theta2];
Ray2 = [x2; theta1; y; theta2];
d = .3;
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];
Z1 = Md*Ray1;
Z2 = Md*Ray2;
ray_z1 = [zeros(1,size(Ray1,2)); d*ones(1,size(Ray1,2))];
ray_z2 = [zeros(1,size(Ray2,2)); d*ones(1,size(Ray2,2))];
figure
hold on
plot1 = plot(ray_z1, [Ray1(1,:); Z1(1,:)]);
plot2 = plot(ray_z2, [Ray2(1,:); Z2(1,:)]);
hold off
set(plot1,'color','r');
set(plot2,'color','b');

