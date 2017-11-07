function savenprime(n)
    rArray = findnprime(n);
    strFilename = ['prime',num2str(n),'.mat'];
    save (strFilename,'rArray');
end