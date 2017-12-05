clc;
clear;
close all;
v = VideoWriter('srgan.mp4','MPEG-4');
v.
temp = dir('C:\Users\kevin\Documents\GitHub\SRGAN\samples\evaluate\*.png');
no_of_frames = numel(temp);
open(v)
for i=1:no_of_frames-1
    filename=strcat('C:\Users\kevin\Documents\GitHub\SRGAN\samples\evaluate\',num2str(i),'.png');
    frame = imread(filename);
    writeVideo(v,frame);  
    disp(i)
end
close(v)
