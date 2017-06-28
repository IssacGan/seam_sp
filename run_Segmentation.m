%
%
clear all;close all;warning('off', 'all');clc;
datasetPath = 'SegTrack_2';
video_name = chooseSequence(datasetPath,'single');
params = set_params(video_name);

seam_sp_seg(datasetpath,params);
    
