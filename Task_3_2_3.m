load 'lightField.mat';

for i = 0.001:0.001:0.01
    d = 1;
    
    Md = [1 d 0 0;
          0 1 0 0;
          0 0 1 d;
          0 0 0 1];
    
    Md_inv = inv(Md);
    
    rays_out = Md_inv*rays;
    
    figure;
    [output, x, y] = rays2img(rays_out(1,:),rays_out(3,:),i,600); % control
    imshow(output);
end