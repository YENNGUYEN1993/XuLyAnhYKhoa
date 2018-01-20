%Doc anh y khoa
oo = dicomread('PATIENT_DICOM\image_0');
%Tinh min
minO = abs(min(min(oo)));
%nang gia tri bang ham log
newO = 0.09 * log(double(minO) + double(oo));
subplot(131);
imhist(newO);
title('Histogram');
subplot(132);
imshow(oo);
title('Original Pic');
subplot(133);
imshow(newO);
title('Using log functions');