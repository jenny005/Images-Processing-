url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
imshow(rgb)
%%
imshow(rgb)
d = imdistline;
delete(d)
gray_image=rgb2gray(rgb);
imshow(gray_image)
[centers, radii] = imfindcircles(rgb,[15 20],'ObjectPolarity','dark')
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centers, radii] = imfindcircles(rgb,[15 20],'ObjectPolarity','dark','Sensitivity',0.95)
imshow(rgb);
h = viscircles(centers,radii);
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centers, radii] = imfindcircles(rgb,[15 20],'ObjectPolarity','dark','Sensitivity',0.95)
imshow(rgb);
h = viscircles(centers,radii);
[centers, radii, metric] = imfindcircles(rgb,[15 20], ...
    'ObjectPolarity','dark','Sensitivity',0.95,'Method','twostage');

delete(h);

h = viscircles(centers,radii);
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centers, radii, metric] = imfindcircles(rgb,[15 20], ...
    'ObjectPolarity','dark','Sensitivity',0.95,'Method','twostage');
h = viscircles(centers,radii);
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centersBright, radiiBright] = imfindcircles(rgb,[15 20],'ObjectPolarity','bright','Sensitivity',0.95);
imshow(rgb);
hBright = viscircles(centersBright, radiiBright,'EdgeColor','b');
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centersBright, radiiBright] = imfindcircles(rgb,[15 20],'ObjectPolarity','bright','Sensitivity',0.95);
imshow(rgb);
hBright = viscircles(centersBright, radiiBright,'EdgeColor','b');
[centersBright, radiiBright, metricBright] = imfindcircles(rgb,[15 20], ...
    'ObjectPolarity','bright','Sensitivity',0.95,'EdgeThreshold',0.1);

delete(hBright);
hBright = viscircles(centersBright, radiiBright,'EdgeColor','b');
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centersBright, radiiBright] = imfindcircles(rgb,[15 20],'ObjectPolarity','bright','Sensitivity',0.95);
imshow(rgb);
hBright = viscircles(centersBright, radiiBright,'EdgeColor','b');
[centersBright, radiiBright, metricBright] = imfindcircles(rgb,[15 20], ...
    'ObjectPolarity','bright','Sensitivity',0.95,'EdgeThreshold',0.1);

delete(hBright);
hBright = viscircles(centersBright, radiiBright,'EdgeColor','b');
h = viscircles(centers,radii);
centers = round([centers; centersBright]);
radii = [radii; radiiBright];
filt_rgb = imfilter(rgb,ones(5)/25);
%%
url = 'https://blogs.mathworks.com/images/steve/2010/mms.jpg';
rgb = imread(url);
[centers, radii] = imfindcircles(rgb,[15 20],'ObjectPolarity','dark','Sensitivity',0.95)
imshow(rgb);
h = viscircles(centers,radii);