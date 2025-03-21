public  class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
       System.debug('inside print basic datatype method');

       String teamName = 'Liverpool';
       Integer numOfPlayers = 11;
       Boolean isChampions = false;
       Long priceOfClub = 100000000L;
       Decimal percentageOfWins = 75.00;

       System.debug(teamName);
       System.debug(numOfPlayers);
       System.debug(isChampions);
       System.debug(priceOfClub);
       System.debug(percentageOfWins);
    }
}