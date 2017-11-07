function q5(n)
  
    fprintf ('\n Load du lieu test');
    imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
    nTestImages = size(imgTestAll, 2 ) ; 
    img = imgTestAll(:,n);
    img2D = reshape(img,28,28);
    strLabelImage = num2str (lblTestAll(n));
    imshow(img2D);
    title(strLabelImage);
end
