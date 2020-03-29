function features = ComputeFeatures(img)
%%%%%%%%%%%%%%%%%%%%%%%%%%
% CSCI 5722 Computer Vision
% Name: Yinbo Chen
% Professor: Ioana Fleming
% Assignment: HW5 
% Purpose: Segmentation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Compute a feature vector for all pixels of an image. You can use this
% function as a starting point to implement your own custom feature
% vectors.
%
% INPUT
% img - Array of image data of size h x w x 3.
%
% OUTPUT
% features - Array of computed features for all pixels of size h x w x f
%            such that features(i, j, :) is the feature vector (of
%            dimension f) for the pixel img(i, j, :).

    img = double(img);
    height = size(img, 1);
    width = size(img, 2);
    features = zeros([height, width, 1]);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                                                                         %
    %                              YOUR CODE HERE                             %
    %                                                                         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    features = img;
%     fill features rgb channel[1 2 3] with img rgb
%     meanfilter_kernel = ones(3)/9;
% %     3*3*(1/9)
%     features(:,:,1)= filter2(meanfilter_kernel,img(:,:,1));
%     features(:,:,2)= filter2(meanfilter_kernel,img(:,:,2));
%     features(:,:,3)= filter2(meanfilter_kernel,img(:,:,3));   
% %   meanfilter
% -------------------------------------------------------------------------------%
    sigm = 0.5;
    features(:,:,1)= imgaussfilt(img(:,:,1),sigm);
    features(:,:,2)= imgaussfilt(img(:,:,2),sigm);
    features(:,:,3)= imgaussfilt(img(:,:,3),sigm);
%   Gaussian filter
%-------------------------------------------------------------------------------%
%     window = [3 3]; 
%     features(:,:,1)= medfilt2(img(:,:,1),window); 
%     features(:,:,2)= medfilt2(img(:,:,2),window); 
%     features(:,:,3)= medfilt2(img(:,:,3),window); 
% %   median filter
%-------------------------------------------------------------------------------%    
   num =2;
   if num ==1
       method = 'Sobel';
   elseif num ==2
       method = 'Prewitt';
   elseif num ==3
       method = 'Roberts';
   elseif num ==4
       method = 'Canny';
   end
   features(:,:,4)= edge(img(:,:,1),method);
   features(:,:,5)= edge(img(:,:,2),method);
   features(:,:,6)= edge(img(:,:,3),method);
%   edge dectection with various algorithm 
%-------------------------------------------------------------------------------%  
    [R,C] = ndgrid(1:height,1:width);
    features(:,:,7)= C;
    features(:,:,8) = R;
%     coordinations
    
end