%Sis Azaltma (Haze Reduction)
foggy=imread("foggyroad.jpg");
imshow(foggy);

defogged=imreducehaze(foggy);
imshow(defogged);
montage({foggy,defogged});

snowy=imread("mountain1.jpg");
imshow(snowy);
cleared1=imreducehaze(snowy);
montage({snowy,cleared1})

%Karanlık Görüntüleri Aydınlatma
darkCity=imread("boston night.jpg");
imshow(darkCity);
imhist(darkCity);

darkCityAdj=rgb2hsv(darkCity);
darkCityAdj(:,:,3)=imadjust(darkCityAdj(:,:,3)); %neden 3 çünkü H S V'de 3.cü olan parlaklık orayla işimiz var.
darkCityAdj=im2uint8(hsv2rgb(darkCityAdj));
imshow(darkCityAdj)

amount=1;%parlaklık artırma seviyesini kontrol eder 0-1 arası değer alır.1 max parlaklık 0 karanlık
brightCity=imlocalbrighten(darkCity,amount); %bölgesel olarak karanlık alanları daha parlak hale getirir.
imshow(brightCity);

amount=1;
brightCity2=imlocalbrighten(darkCityAdj,amount);

montage({darkCityAdj,brightCity,brightCity2})

montage({darkCityAdj,brightCity})

%The imreducehaze and imlocalbrighten functions are not meant to replace the contrast adjustment technique presented earlier.
