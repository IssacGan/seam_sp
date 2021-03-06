function [spr_models , img_segm, error, overlap]= init_sp_models()
% Frame1 ---params.video_name
global params sequence run_time
disp(['--------------------------------' params.video_name '------------------------']);

time_start = clock;
params.imgscale = img_scale();
img_name = fullfile(params.dataset_path, params.video_name ,sequence(1).name);
img_current = imresize (imread(img_name), params.imgscale);
img_name = fullfile(params.dataset_path, params.video_name ,sequence(2).name);

img_next = imresize (imread(img_name), params.imgscale);

[roiLoc , centLoc] = getROI();
