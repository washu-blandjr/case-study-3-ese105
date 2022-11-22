 load("lightField.mat");
d1 = .250;
d2 = -1.003;
f = ((1./d1)+(1./d2)).^-1;


Md1 = [1 d1 0 0;
       0 1  0 0;
       0 0  1 d1;
       0 0  0 1];

Md2 = [1 d2 0 0;
       0 1  0 0;
       0 0  1 d2;
       0 0  0 1];

Mf = [1   0  0   0;
     -1/f 1  0   0;
      0   0  1   0;
      0   0 -1/f 1];

Z1 = Md1*rays;
Z2 = Mf*rays;
Z3 = Md2*rays;

output =  rays2img(Z3(1,:),Z3(3,:),.005,500);
figure;
imshow(output);
