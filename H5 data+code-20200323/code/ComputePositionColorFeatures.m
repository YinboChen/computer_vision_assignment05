function features = ComputePositionColorFeatures(img)
%%%%%%%%%%%%%%%%%%%%%%%%%%
% CSCI 5722 Computer Vision
% Name: Yinbo Chen
% Professor: Ioana Fleming
% Assignment: HW5 
% Purpose: Segmentation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Compute a feature vector of colors and positions for all pixels in the
% image. For each pixel in the image we compute a feature vector
% (r, g, b, x, y) where (r, g, b) is the color of the pixel and (x, y) is
% its position within the image.
%
% INPUT
% img - Array of image data of size h x w x 3.
%
% OUTPUT
% features - Array of computed features of size h x w x 5 where
%            features(i, j, :) is the feature vector for the pixel
%            img(i, j, :).

    height = size(img, 1);
    width = size(img, 2);
    features = zeros(height, width, 5);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                                                                         %
    %                              YOUR CODE HERE                             %
    %                                                                         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     img = double(img);
%     for i = 1: height
%         for j = 1: width
%             features(i,j,:)=[img(i,j,1),img(i,j,2),img(i,j,3),j,i];
%         end
%     end

    conv_img = double(img);
    features(:,:,1:3)= conv_img;
    [R,C] = ndgrid(1:height,1:width);
    features(:,:,4)= C;
    features(:,:,5) = R;
    
end