%the following example demonstrates how to locate corners with the 
%corner function and adjust the results 
%by refining the maximum number of desired corners.
%Read and display an RGB image, and then convert it to grayscale.
%Read the sample file, sharda.jpg, and display the RGB image.
I= imread('sharda.jpg');

%the function imshow(I) displays image I.
imshow(I)


%Convert the RGB image to a grayscale image and display it.
I=rgb2gray(I);

%figure creates a new figure window using default property 
%values. This new figure window becomes the current figure, and it 
%displays on top of all other figures on the screen.
figure


%the function imshow(I) displays image.
imshow(I)

% By using the function corner(I) we can find the corners in the image
% this function detects the corners in image I and the return them in
% matrix in C.
C=corner(I);

%subplot divides the current figure into rectangular panes that are numbered rowwise. 
%Each pane contains an axes object. Subsequent plots are output to the current pane.
%subplot(m,n,p) or subplot(mnp) divides the figure window into m-by-n
%matrix. p is the location to where plot the figure. In subplot(4,2,1) it
%has 8 plots where 4 is no. of rows and 2 is no. of cols and 1 is location.
%Display the corners when the maximum number of desired corners is the
%default setting of 200.
subplot(2,2,3);


%the function imshow(I) displays image.
imshow(I);


% hold on will retain the current plot so that new plots added to the axes
% do not delete the existing plots.
hold on

%plot(X,Y) creates a 2-D line plot of the data with marker 
%+ and color green.
plot(C(:,2), C(:,2), '+', 'Color', 'r')


% adds the title consisting of a string, Maximum Corners=200, at the top
% and in the center of the current axes
title('Default Corners=200');


% this sets the state to be off so that new plots added to the axes clear
%existing plots and reset all axes properties.
hold off


%Display the corners when the maximum number of desired corners is 4.
corners_max = corner(I,4);


%In subplot(1,2,2) it
%has 8 plots where 1 is no. of rows and 2 is no. of cols and 2 is location

subplot(1,2,2);


%this function displays image I.
imshow(I);


% hold on will retain the current plot so that new plots added to the axes
% do not delete the existing plots.
hold on


%plot(X,Y) creates a 2-D line plot of the data with marker * and color
%blue
plot(corners_max(:,2), corners_max(:,2), ...
'*', 'Color', 'b') 

% adds the title consisting of a string, Maximum Corners=4, at the top
% and in the center of the current axes
title('Maximum Corners = 4') 


% this sets the state to be off so that new plots added to the axes clear
%existing plots and reset all axes properties.
hold off