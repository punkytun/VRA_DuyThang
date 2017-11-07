function Recognition002_Digits()
    fprintf ('\n Nap du lieu train'); 
    imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte');
    
    fprintf ('\n Nap du lieu test');
    imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
    
    nTrainImages = size(imgTrainAll,2);
    nTrainLabels = size(lblTrainAll,1);
    
    nTestImages = size(imgTestAll,2);
    nTestLabels = size(lblTestAll,1);
    nSizeOfImage = size (imgTrainAll,1); 
    
    fprintf ('\n So luong anh train : [%d]', nTrainImages);
    fprintf ('\n So luong nhan anh train : [%d]', nTrainLabels);
    fprintf ('\n So luong anh test : [%d]', nTestImages);
    fprintf ('\n So luong nhan anh test : [%d]', nTestLabels);
    
    
    
    