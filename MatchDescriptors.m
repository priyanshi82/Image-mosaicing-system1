
function [im1_matches, im2_matches] = MatchDescriptors(im1_points, im1_descriptors, im2_points, im2_descriptors, epsilon) 

% MatchDescriptors 

% function [im1_matches, im2_matches] = MatchDescriptors(im1_points, im1_descriptors, im2_points, im2_descriptors, epsilon)  
 
% Input 
%   - im1_points, im2_points: points from 2 images 
%   - im1_descriptors, im2_descriptors: corresponding descriptors 
%   - epsilon: threshold for descriptors to match 
  
% Output 
%   - im1_matches, im2_points : points matching in the two images 
 
% Create two new arrays named as im1_matches=[] and im2_matches=[].
    im1_matches = []; 
    im2_matches = []; 
     
    
%size(im1_points,1), size(im2_points,1) returns the size of the im1_points and im2_points.
% DescDist = zeros((size(im1_points,1), size(im2_points,1)) returns an size(im1_points,1),
% size(im2_points,1) array of zeros where size(im1_points,1), size(im2_points,1)
% indicate the size of each dimension. For example, zeros(2,3) returns a 2-by-3 matrix.
%Example -  A = [1 4; 2 5; 3 6];
%X = zeros(A)
%X =   0     0
%      0     0
%      0     0
    DescDist = zeros(size(im1_points,1), size(im2_points,1)); 
    
    
% executes a sequence of statement from 1 to size of img1_points and store the result
% in variable i.  
    for i=1:size(im1_points,1) 
        
        
% executes a sequence of statement from 1 to size of img2_points and store 
%the result in variable j. 
    for j=1:size(im2_points,1) 
        
 
% Conversion of 3-D array into 2-D array. Result will be stored in
% DescDist(i,j).
% (im1_descriptors(:,:,i),im2_descriptors(:,:,j) are 3-D arrays.       
% (dist2(im1_descriptors(:,:,i),im2_descriptors(:,:,j)) will calculate the
% squared distance between sets of points.
% trace(dist2(im1_descriptors(:,:,i),im2_descriptors(:,:,j)))calculates the
% sum of diagonal elements of matrices. 
   DescDist(i,j) = trace(dist2(im1_descriptors(:,:,i),im2_descriptors(:,:,j)));
     
   
% Here loop ends
    end 
    
    
% DescDist(i,:) which is a 2-D array is stored in col_i.
    col_i = DescDist(i,:); 
    
   
%Here (col_i) is a matrix, then min(col_i) is a row vector containing the minimum value of each column
%and result stored in [first_min,ind].
    [first_min,ind] = min(col_i);
    
    
% col_i(ind) is a newly created array.       
        col_i(ind) = []; 

        
% min(col_i) is stored in sec_min.       
        sec_min = min(col_i); 

        
% I have applied conditional tests. If the first condition is satisfied then it will check for second 
% condition. If both conditions are satisfied then further statements will
% be executed. The result is stored in im1_matches and im_2 matches.
        if sec_min ~= 0         
            if first_min/sec_min < epsilon 
                im1_matches = [im1_matches; [im1_points(i,1), im1_points(i,2)]]; 
                im2_matches = [im2_matches; [im2_points(ind,1), im2_points(ind,2)]]; 
   
%end of third if condition
            end
%end of second if condition
        end 
     
%end of first if condition
        end 
   