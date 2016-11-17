pilar = depth_10(:,:,1,1);
[x1,y1] = find(pilar(:,:) > 2850 & pilar(:,:) < 2880);
[x2,y2] = find(pilar(:,:) > 6000 & pilar(:,:) < 6040);
[x3,y3 ] = find(pilar(:,:) > 5840& pilar(:,:) < 5900);
imshow(pilar); hold on


scatter(y1(235>x1 &x1>120),x1(235>x1&x1>120),'.r'); 
scatter(y2(235>x2&x2>120),x2(235>x2&x2>120),'.b');
scatter(y3(235>x3&x3>120),x3(235>x3&x3>120),'.g');