# Image-mosaicing-system1

Image mosaicing is the process in which different photographic images are integrated together to form a segmented panorama or a high resolution image. Multiple images are overlapped and blended to form a wide angle panoramic image. Image mosaicing creates a large field of view using of scene and the result image can be used for texture mapping of a 3D environment too.Image mosaicing consists of basic three steps: 
Image Acquisition
Image Registration
and Image Blending

Image Acquisition:  The first step of any image vision system is image acquisition. Image acquisition can be broadly be defines as the action of retrieving an image from some sources. Typically, the images required for image stitching can be acquired by three different methods. These methods include translating a camera parallel to the scene, rotating a camera about its vertical axis by keeping the optical center fixed or by a handheld camera.

Image Registeration: It is the second step which consists of feature detection and feature extraction.In this I have detected corner as a feature . The most important feature of corner is that if there is a corner in an image then its neighborhood will show an abrupt change in the intensity. The Harris corner detector is an efficient feature detection operator. 

Image Blending: It is the technique which modifies the image gray levels in the vicinity of a boundary to obtain a smooth transition between images by removing the seams and creating a blended image by determining how a pixel in an overlapping area should be presented.
