function primeArray = findnprime(n) 
    primeArray = [];
    count = 0 ; 
    i = 2; 
    while count < n 
        if (isprime (i) == 1 ) 
            primeArray = [primeArray,i];
            count = count  + 1 ; 
        end 
        i=i+1;
    end
end