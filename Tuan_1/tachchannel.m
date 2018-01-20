%Read image and split chanel
img = imread('test.png'); % Read image
%figure, imshow(img), title('Original image')

red = img(:,:,1); % Red channel
green = img(:,:,2); % Green channel
blue = img(:,:,3); % Blue channel
a = zeros(size(img, 1), size(img, 2));
just_red = cat(3, red, a, a);
just_green = cat(3, a, green, a);
just_blue = cat(3, a, a, blue);
back_to_original_img = cat(3, red, green, blue);

subplot(131);
imshow(just_red);
title('Red channel');

subplot(132);
imshow(just_green);
title('Green channel');

subplot(133);
imshow(just_blue);
title('Blue channel');