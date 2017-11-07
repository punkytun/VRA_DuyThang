function ex3()
    strMessage = '\n Nhap n: ';
    n = input (strMessage); 
    i = 1;
    s = 0;
    while i<=n 
        s = s + i;
        i = i + 1; 
    end
    fprintf ('\n S: %d',s);
end