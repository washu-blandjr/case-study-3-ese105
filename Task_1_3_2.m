load 'lightField.mat';

output1 = rays2img(rays(1,:),rays(3,:),.005,200); % control 
output2 = rays2img(rays(1,:),rays(3,:),.0005,200); % increase sensor width
output3 = rays2img(rays(1,:),rays(3,:),.05,200); % decrease sensor width
output4 = rays2img(rays(1,:),rays(3,:),.005,100); % increase pixel #
output5 = rays2img(rays(1,:),rays(3,:),.005,500); % decrease pixel #
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