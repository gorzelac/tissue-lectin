matrix = load("matrix.txt");

gatein = (matrix(11:256,8:256));
totalin =(matrix(5:256,4:256));

gate = sum(gatein(:));
total = sum(totalin(:));
fraction = ((gate./total)*100);
fraction  #shows the percentage of events in the indicated gate in relation to the total number of considered events

clear();