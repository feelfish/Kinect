

%colorVid = imaq.VideoDevice('kinect',1);
 depthVid = imaq.VideoDevice('kinect',2);
 
%  preview(depthVid);
%  
%  closepreview(depthVid);
 
 for i = 1:10
   % this_dframe(:,:,i) = step(depthVid);
  %   this_cframe(:,:,:,i) = step(colorVid);
  imshow(depth_10(:,:,1,i));hold on
  pause(0.5); 
 end
 
 release(depthVid);%release(colorVid);
 
 %diff_dframe = this_dframe(:,:,2:end) - this_dframe(:,:,1:end-1);
 
%  for i = 1:11
%      
% %       gray_cframe(:,:,i) = rgb2gray(diff_cframe(:,:,:,i));
% %       imshow(gray_cframe(:,:,i) );
%      imshow(this_cframe(:,:,:,i));hold on
%      %imshow(diff_cframe(:,:,:,i)); hold on
%      pause(0.5);
%     disp(i);
%  end
%  for i = 1:10
% %  subplot(2,1,1); imshow(this_cframe(:,:,:,i+1)); 
% %  subplot(2,1,2);imshow(gray_cframe(:,:,i)); hold on
%   subplot(2,1,1); imshow(gray_cframe(:,:,i));
%   BW = edge(gray_cframe(:,:,i),'canny',[0.08 0.2],10);
%  subplot(2,1,2); imshow(BW);hold on
%  pause(0.5);
%  end
%  
%  this_cframe(:,:,:,12:end) =[];
%  
%  gray_cframe = rgb2gray(diff_cframe);
 
 
%  triggerconfig([colorVid depthVid],'manual');
%  colorVid.FramesPerTrigger = 100;
% depthVid.FramesPerTrigger = 100;
% 
% 
%  
% 
% 
% [colorFrameData,colorTimeData,colorMetaData] = getdata(colorVid);
% [depthFrameData,depthTimeData,depthMetaData] = getdata(depthVid);
% 
% stop([colorVid,depthVid]);