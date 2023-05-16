BatchOppsDelete opps = new BatchOppsDelete();
Id oppJobId= Database.executeBatch(opps, 200);