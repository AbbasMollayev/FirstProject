PrimitiveDataTypeDemo p1 = new PrimitiveDataTypeDemo();
p1.printBasicDataType();

    String word = 'apple';
    String article;
    String firstLetter = word.substring(0,1);
    switch on firstLetter{
        when 'a'{
            article = 'an';
        }
        when 'e'{
            article = 'an';
        }
        when 'i'{
            article = 'an';
        }
        when 'o'{
            article = 'an';
        }
        when 'u'{
            article = 'an';
        }
        when else {
            article = 'a';
        }
    }
     System.debug(article);
