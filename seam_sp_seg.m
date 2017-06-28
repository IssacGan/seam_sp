function seam_sp_seg(datasetPath, params)

img_obj = dir(fullfile(datasetPath, params.video_name,params.img_fmt));
img_first = imread(fullfile(datasetPath, params.video_name,img_obj(1).name));
gt_obj = dir(fullfile(datasetPath, params.video_name, 'ground-truth', params.gt_fmt));
gt_first = imread (fullfile(datasetPath, params.video_name, 'ground-truth',gt_obj(1).name));
for k=1:length( img_obj)
    
    
end