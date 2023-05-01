List<Integer> numberList = new List<Integer>{67,32,62,93,14};

Integer highNum = Helper.getHighestNumber(numberList);
System.debug('highNum value is : ' + highNum); // 93

List<Integer> numberList2 = new List<Integer>{23,50,21,18,98};
Integer highNum2 = Helper.getHighestNumber(numberList2);
System.debug('highNum2 value is : ' + highNum2);


System.debug(numberList + ' Sum is : ' 
                         + Helper.getTotal(numberList) );
System.debug(numberList2 + ' Sum is : ' 
                         + Helper.getTotal(numberList2) );

System.debug(numberList + ' Avg is : ' 
                         + Helper.getAverage(numberList) );
System.debug(numberList2 + ' Avg is : ' 
                         + Helper.getAverage(numberList2) );

List<String> names 
    = new List<String>{'Suat','Esra','Tamara','Yagut','Dzhamilya','Neslihan'};                        

System.debug('filteredList value is : ' + Helper.getLongerNames(names));

