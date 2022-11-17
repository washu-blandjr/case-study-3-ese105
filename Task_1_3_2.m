load 'lightField.mat';

% TODO
% -optimize code to run in a few lines
%% #2 Manipulating camera sensor

output1 = rays2img(rays(1,:),rays(3,:),.005,200); % control 
output2 = rays2img(rays(1,:),rays(3,:),.0005,200); % decrease sensor width
output3 = rays2img(rays(1,:),rays(3,:),.05,200); % increase sensor width
output4 = rays2img(rays(1,:),rays(3,:),.005,100); % decrease pixel #
output5 = rays2img(rays(1,:),rays(3,:),.005,500); %increase pixel #
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

%% #3 Propogation using $M_{d}$ 
d = .3;
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];

rays_z = Md*rays;
figure;
outputz1 = rays2img(rays_z(1,:),rays_z(3,:),.005,200); % control
imshow(outputz1);

d = .00003; % decrease dist
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];
rays_z = Md*rays;
figure;
outputz2 = rays2img(rays_z(1,:),rays_z(3,:),.005,200); 
imshow(outputz2);

d = 25.03; % increase dist
Md = [1 d 0 0;
      0 1 0 0;
      0 0 1 d;
      0 0 0 1];
rays_z = Md*rays;
figure;
outputz3 = rays2img(rays_z(1,:),rays_z(3,:),.005,200); 
imshow(outputz3);