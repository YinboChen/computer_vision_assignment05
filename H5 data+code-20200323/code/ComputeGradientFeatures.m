function features = ComputeGradientFeatures(img)
%%%%%%%%%%%%%%%%%%%%%%%%%%
% CSCI 5722 Computer Vision
% Name: Yinbo Chen
% Professor: Ioana Fleming
% Assignment: HW5 
% Purpose: Segmentation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    img = double(img);
    height = size(img, 1);
    width = size(img, 2);
    features = zeros([height, width, 6]);
    
    [Gx1, Gy1] = imgradientxy(img(:,:,1),'prewitt');
    [Gx2, Gy2] = imgradientxy(img(:,:,2),'prewitt');
    [Gx3, Gy3] = imgradientxy(img(:,:,3),'prewitt');
    features(:,:,1) = Gx1;
    features(:,:,2) = Gx2;
    features(:,:,3) = Gx3;
    features(:,:,4) = Gy1;
    features(:,:,5) = Gy2;
    features(:,:,6) = Gy3;
   
    
end