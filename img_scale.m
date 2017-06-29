function imgScale = img_scale()
global params
segSet = {'bmx', 'penguin_1'};
if( ismember(params.video_name, segSet))
    imgScale = 1;
    return;
end

gt_obj = dir(fullfile(params.dataset_path , params.video_name, 'ground-truth',params.gt_fmt));
gt_img = imread(fullfie(params.dataset_path , params.video_name, 'ground-truth',gt_obj(1).name));
[oriHeight , oriWidth, ~] = size(gt_img);

imgScale = min (1,min(240/oriHeight, 320/oriWidth));