function ex4()
    strMessage = '\n Nhap n: ';
    n = input (strMessage); 
    s = 0;
  	for i=0:n
        s = s + i; 
    end
    fprintf ('\n S: %d',s);
end