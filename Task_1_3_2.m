load 'lightField.mat';

% TODO
% -optimize code to run in a few lines
%% #2 Manipulating camera sensor

[output1, x1, y1] = rays2img(rays(1,:),rays(3,:),.005,200);  % control 
[output2, x2, y2] = rays2img(rays(1,:),rays(3,:),.0001,200); % decrease sensor width
[output3, x3, y3] = rays2img(rays(1,:),rays(3,:),.015,200);  % increase sensor width
[output4, x4, y4] = rays2img(rays(1,:),rays(3,:),.005,100);  % decrease pixel #
[output5, x5, y5] = rays2img(rays(1,:),rays(3,:),.005,500);  % increase pixel #

[output6, x6, y6] = rays2img(rays(1,:),rays(3,:),.05,500);  % best pic#

figure;
imshow(output1);

figure;
imshow(output2);

figure;
imshow(output3);

figure;
imshow(output4);

figure;
imshow(output5);

figure;
imshow(output6);

%% #3 Propogation using $M_{d}$ 
d = 0.3;
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];

rays_z = Md*rays;
figure;
[outputz1, xz1, yz1] = rays2img(rays_z(1,:),rays_z(3,:),.005,200); % control
imshow(outputz1);

d = 0.003; % decrease dist
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];
rays_z = Md*rays;
figure;
[outputz2, xz2, yz2] = rays2img(rays_z(1,:),rays_z(3,:),.005,200); 
imshow(outputz2);

d = 10; % increase dist
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];
rays_z = Md*rays;
figure;
[outputz3, xz3, yz3] = rays2img(rays_z(1,:),rays_z(3,:),.005,200); 
imshow(outputz3);