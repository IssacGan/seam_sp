
%%
function params = set_parameters(datasetPath, video_name)
%set params of image segmentation
    params.dataset_path = datasetPath;
    params.video_name =  video_name;
    params.cut_height_bord = 0;
    params.cut_width_bord = 0;
    params.maxThreArea = 200; % controls the maximum labeling area of forgroud model
    params.minThreArea = 50; % controls the minimum labeling area of forgroud model
    params.maxSigma = 10;
%default parameters
    params.sp_num = 250;
    params.maxSigma = 10;
    
    switch (video_name)
        case 'monkeydog';
            params.img_fmt = '*.bmp';
            params.gt_fmt = '.png';
            params.sp_num = 250;
            params.threOutlierDist = 5;
            params.labeling_ratio = 1.;
            params.cut_width_bord = 5;
            
            
        case 'girl';
            params.img_fmt = '*.bmp';
            params.gt_fmt = '*.bmp';
            params.sp_num = 120;
            params.threOutlierDist = 30;
            params.labeling_ratio = .65;
        case 'cheetah';
            params.img_fmt = '*.bmp';
            params.gt_fmt  = '*.png';
            params.sp_num = 100;
            params.threOutlierDist = 30;
            params.labeling_ratio = .65;
        case 'birdfall2';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 70;
            params.threOutlierDist = 10;
            params.labeling_ratio = .75;
        case 'parachute';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 120;
            params.threOutlierDist = 3;
            params.labeling_ratio = .75;
            
        case 'penguin';
            params.img_gt = '*.bmp';
            params.gt_fmt = '*.png';
            params.sp_num = 300;
            params.threOutlierDist = 5;
            params.labeling_ratio = .7;
           
        case 'bird_of_paradise';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 220;
            params.threOutlierDist = 40;
            params.labeling_ratio = .65;
        case 'bmx';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 200;
            params.threOutlierDist = 0.7;
            params.labeling_ratio = .75;
        case 'drift';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 500;
            params.threOutlierDist = 5;
            params.labeling_ratio = .7;
            params.cut_height_bord = 21;
        
        case 'frog';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 125;
            params.threOutlierDist = 40;
            params.labeling_ratio = .65;
            
        case 'hummingbird';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 115;
            params.threOutlierDist = 40;
            params.labeling_ratio = .7;
            params.cut_height_bord = 3;
            
        case 'monkey';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 90;
            params.threOutlierDist = 5;
            params.labeling_ratio = .8;
            
        case 'soldier';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 440;
            params.threOutlierDist = 5;
            params.labeling_ratio = .6;
            
        case 'worm';
            params.img_gt = '*.png';
            params.gt_fmt = '*.png';
            params.sp_num = 100;
            params.threOutlierDist = 3;
            params.labeling_ratio = .75;
            
        otherwise;  error(['unknown sequence' video_name '!']);
    end
    params.nColor = params.sp_num * 20;
    params.rand_color  = round(255 * rand(params.nColor,3));
end
        
            
            