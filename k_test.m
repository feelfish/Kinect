utilpath = fullfile(matlabroot, 'toolbox', 'imaq', 'imaqdemos', ...
    'html', 'kinect');
addpath(utilpath);

colorVid = videoinput('kinect',1);
% depthVid = videoinput('kinect',2);
% triggerconfig([colorVid depthVid],'manual');   

% triggerconfig(colorVid,'manual');   
% colorVid.FramesPerTrigger = 2;
%depthVid.FramesPerTrigger = 2;
    
start(colorVid);
for i = 1:20
%start([colorVid depthVid]);

%trigger([colorVid])% depthVid]);

%[colorFrameData,colorTimeData,colorMetaData] = getdata(colorVid);
%[depthFrameData,depthTimeData,depthMetaData] = getdata(depthVid);
%flushdata(colorVid); %flushdata(depthVid);
%diff_color = rgb2gray(colorFrameData(:,:,:,2)) -  rgb2gray(colorFrameData(:,:,:,1));
%imshow(diff_color); drawnow, hold on


frame1 = getsnapshot(colorVid);
frame2 = getsnapshot(colorVid);
image(frame1 - frame2); drawnow 

%delete([frame1 frame2]);

end



stop(colorVid);
%stop([colorVid depthVid]);