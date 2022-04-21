matrix = load("matrix.txt");

gatein = (matrix(10:256,10:256));
totalin =(matrix(8:256,8:256));

gate = sum(gatein(:));
total = sum(totalin(:));
fraction = ((gate./total)*100);
fraction  #shows the percentage of events in the indicated gate in relation to the total number of considered events

clear();