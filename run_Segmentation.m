%
%
clear all;close all;warning('off', 'all');clc;
global params sequence 
datasetPath = 'SegTrack_2';
video_name = chooseSequence(datasetPath,'single');
init_params = set_parameters(datasetPath, video_name);
params = init_params;
sequence = dir (full(params.dataset_path, params.video_name, params.img_fmt));

[spr_models , img_segm, error(1), overlap(1)] = init_sp_models();
idx_frames = length(sequence);
for fr = 2:idx_frames
    
end
    
    
