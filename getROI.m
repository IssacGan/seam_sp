function [roiLoc,centLoc ,objLoc]= getROI(img_seg)
global params sequence
if(nargin == 0)
    gt_obj = dr(fullfile(params.dataset_path, params.video_name, 'ground-truth',params.gt_fmt));
    gt_img = imread(fullfile(params.dataset_path, params.video_name,'ground-truth',gt_obj(1).name));
    gt_img = imresize(gt_img, params.imgscale);
    img_seg = im2w(rgb2gray(gt_img));
    