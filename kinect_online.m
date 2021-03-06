imaqreset
kinect_on = videoinput('kinect',2);

%Generate colum and row indecies to get mass;
row_index  = repmat([1:424]',1,512);
col_index = repmat([1:512],424,1);



try
    set(kinect_on,'framesperTrigger',1,'TriggerRepeat',Inf);
    start(kinect_on); % delete(c120)
    
    frame1 = getdata(kinect_on);
    frame2 = getdata(kinect_on);
    flushdata(kinect_on);
while islogging(kinect_on)
   
    frame3 = getdata(kinect_on);
    
    diff_A = frame2-frame1; diff_A = (diff_A> 100); %= 0;(diff_A>=200) =1;
    
    diff_B = frame3-frame2; diff_B = (diff_B>100); %= 0;diff_B(diff_B>=200) =1;
    flushdata(kinect_on);
          
    diff_C = (diff_A&diff_B); 
    erode_mask = strel('rectangle', [5,4]);
    %denoised_diff_C = imerode(diff_C,erode_mask);
    
    denoised_diff_C = imopen(diff_C,erode_mask);
    
%Find Centroids using center of mass
% x_center = (denoised_diff_C .* row_index) / sum([1:512]);
% y_center = (denoised_diff_C .* col_index) / sum([1:424]);
x_center = sum( row_index(denoised_diff_C) ) / sum([1:512]);
y_center = sum( col_index(denoised_diff_C)) / sum([1:424]);
    
%     find_cent = regionprops(denoised_diff_C,'centroid');
%     centroids = find_cent.Centroid;
    
%     pointcloud = pcfromkinect(frame2,kinect_on);
%     [indices,dists] = findNearestNeighbors(pointcloud,point,K);
    
    frame1 = frame2;
    frame2 = frame3;
    %pause(0.05);
     imshow(denoised_diff_C);hold on 
     plot(x_center,y_center,'or'); drawnow
     
     flushdata(kinect_on);
end

catch err
    % This attempts to take care of things when the figure is closed
    flushdata(kinect_on);
    stop(kinect_on);
    imaqreset
    disp('Cleaned up')
    rethrow(err);
end