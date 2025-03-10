img=imread("ankleXray.png");
imshow(img);

%histogramı çizme
imhist(img);

%histogramın daha net görünmesi için y ekseni limitlerini [0,ınf] olarak
%ayarlıyoruz
imhist(img)
ylim([0 Inf]);
%piksel sayılarını daha ayrıntılı görücez

%imadjust histogramı doğrusal olarak gererek mevcut yoğunluk aralığını genişletir
adjusted_img=imadjust(img);
imshow(adjusted_img)
%histeq yoğunluk değerlerini yeniden dağıtarak histogramı daha dengeli hale
%getirir
equalized_img=histeq(img);
imshow(equalized_img);
%adapthisteq görüntüyü küçük parçalara bölerek her bir bölgenin kontrastını
%ayrı ayrı arttırır
adaptive_img=adapthisteq(img);
imshow(adaptive_img);

montage({img,adjusted_img,equalized_img,adaptive_img})

imhist(adaptive_img);
imhist(adjusted_img);
imhist(equalized_img);

%birbirleriyle iç içe kullandım
%önce gerdim sonra eşitledim
img1=imadjust(img);
img2=adapthisteq(img1),
imshow(img2)


%burada ise önce eşitledim sonra gerdim
img3=adapthisteq(img);
img4=imadjust(img3);
imshow(img4);

montage({img2,img4})
