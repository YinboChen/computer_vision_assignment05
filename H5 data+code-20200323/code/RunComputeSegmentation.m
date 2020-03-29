%%%%%%%%%%%%%%%%%%%%%%%%%%
% CSCI 5722 Computer Vision
% Name: Yinbo Chen
% Professor: Ioana Fleming
% Assignment: HW5 
% Purpose: Segmentation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;
% Simple script to run ComputeSegmentation.

% Read the input image.
% img = imread('../imgs/cat_grumpy.jpg');
img = imread('../imgs/black_kitten_star.jpg');

% Choose the number of clusters and the clustering method.
k = 3;
clusteringMethod = 'kmeans';

% Choose the feature function that will be used. The @ syntax creates a
% function handle; this allows us to pass a function as an argument to
% another function.

% featureFn = @ComputeColorFeatures;
% featureFn = @ComputeFeatures;
% featureFn = @ComputePositionColorFeatures;

  F =3;
   if F ==1
       featureFn = @ComputeColorFeatures;
   elseif F ==2
       featureFn = @ComputeFeatures;
   elseif F ==3
       featureFn = @ComputePositionColorFeatures;
   end

% Whether or not to normalize features before clustering.
normalizeFeatures = true;

% Whether or not to resize the image before clustering. If this script
% runs too slowly then you should set resize to a value less than 1.
resize = 1;

% Use all of the above parameters to actually compute a segmentation.
segments = ComputeSegmentation(img, k, clusteringMethod, featureFn, ...
                               normalizeFeatures, resize);
                           
% Show the computed segments in two different ways.
ShowSegments(img, segments);
ShowMeanColorImage(img, segments);