function q4()
   fprintf ('\n Load du lieu test');
    imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
    count = 0;
    for j=0:9
        for i = 1 :length(lblTestAll)
            if lblTestAll(i) == j
                count = count + 1 ;       
            end 
        end
        fprintf('Nhan [%d] co: %d anh\n', j, count);
        count = 0;
    end
end
