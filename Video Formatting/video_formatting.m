clc;
clear;
close all;
v = VideoReader('video_hq.mp4');%Frame rate=29.97
i=1;
while v.hasFrame
    input_frame=v.readFrame();
    resized_frame=imresize(input_frame,0.25);
    filename=strcat('C:\Users\kevin\Documents\GitHub\SRGAN\Video Formatting\resized_frames\',num2str(i),'.png');
    imwrite(resized_frame,filename)
    i=i+1
end