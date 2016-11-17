%colorD = imaq.VideoDevice('kinect',1);
depthD = imaq.VideoDevice('kinect',2);


%step(colorD); 
% for i = 1:10
%     step(depthD);
% end
%colorImage = step(colorD);

depthImage = step(depthD);

xyzPoints = depthToPointCloud(depthImage,depthD);
% pcshow(xyzPoints,'VerticalAxis','y','VerticalAxisDir','down'); drawnow 
% hold on

% xlabel('X (m)');
% ylabel('Y (m)');
% zlabel('Z (m)');


% kcloud = pcfromkinect(depthD,depthImage,colorImage);
% player = pcplayer(kcloud.XLimits, kcloud.YLimits, kcloud.ZLimits,...
%     'VerticalAxis','y','VerticalAxisDir','down');
% 
% for i = 1:1  
%    colorImage = step(colorD);  
%    depthImage = step(depthD);
%  
%    ptCloud = pcfromkinect(depthD,depthImage,colorImage);
%    ptCloud = pcdenoise(ptCloud);
%    view(player,ptCloud);
% end

%release(colorD);
release(depthD);