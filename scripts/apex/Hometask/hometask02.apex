//Task # 1
// Write an Apex code that store two numbers in Integer variables 
// - Print out the bigger number 

Integer num1= 150000;
Integer num2= 165000;
Integer biggerNum= (num1>num2)?num1:num2;
System.debug('The bigger number is: '+ biggerNum);

//Task # 2
// Write an Apex code that store 3 numbers in Integer variables
//    - Print out the smallest number 

Integer num3= 62;
Integer num4= 57;
Integer num5= 13;

if(num3<num4 && num3<num5){
    System.debug('The smallest number is: '+ num3);
}else if(num4>num5 && num3>num5){
    System.debug('The smallest number is: '+ num5);
}else if(num3>num4 && num5>num4){
    System.debug('The smallest number is '+ num4);
}

//Task # 3
// Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
//    - if both value true print out 'both laughing'
//    - if only isBaby1Laughing then print out 'only first baby laughing'
//    - if only isBaby2Laughing then print out 'only second baby laughing'
//    - else print 'no babies are laughing'

Boolean isBaby1Laughing= true;
Boolean isBaby2Laughing= true;

if(isBaby1Laughing && isBaby2Laughing){
    System.debug('Both laughing');
}else if(isBaby1Laughing==true && isBaby2Laughing== false){
    System.debug('Only first baby laughing');
}else if(isBaby2Laughing== true && isBaby1Laughing== false){
    System.debug('Only second baby laughing');
}else{
    System.debug('No babies laughing');
}


//Task # 4
//  Write an Apex that store caseStatus as String 
//    - if  caseStatus is New print 'Case need attention'
//    - if  caseStatus is Working print 'Case in progress'
//    - if  caseStatus is Escalated print 'Case need to be reassigned and manager need to be notified'
//    - if  caseStatus is Closed print 'Case has been resolved'

String caseStatus = 'Escalated';
 Switch on caseStatus{
    when 'New'{
        System.debug('Case needs attention');
    }
    when 'Working'{
        System.debug('Case in progress');
    }
    when 'Escalated'{
        System.debug('Case needs to be reassigned and manager needs to be notified');
    }
    when 'Closed'{
        System.debug('Case has been resolved');
    }
    when else {
        System.debug('Nothing matches, invalid case status');
    }
 }

//Task # 5
// Write an Apex that store caseOrigin as String
// Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
//    - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
//    - if the stage is 'Qualification', assign the value of probabilityPercentage to 0.2
//    - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
//    - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
//    - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0

//    - at the end Print out message 'State is X and probability Percentage is X %'

String opportunityStage= 'Qualification';
Double probabilityPercentage;

switch on opportunityStage{
    when 'Prospecting'{
        probabilityPercentage= 0.1;
    }
    when 'Qualification'{
        probabilityPercentage= 0.2;
    }
    when 'Need Analysis'{
        probabilityPercentage= 0.3;
    }
    when 'Closed Won'{
        probabilityPercentage= 1.0;
    }
    when 'Closed Lost'{
        probabilityPercentage= 0;
    }
}
System.debug('Stage is '+ opportunityStage + ' and ' + ' probability is ' + probabilityPercentage);

//Task # 6
// Write an Apex code that store leadScore as Integer inialize it's value to 50 and hasEmail, hasPhone, hasTwitter as Boolean variables 
//    - in 3 separate if statements (without else) do as below : 
//    - if hasEmail equal true , increase the value of leadScore by 20
//    - if hasPhone equal true , increase the value of leadScore by 18
//    - if hasTwitter equal true , increase the value of leadScore by 12
//    - at the end , print out 'The lead store is  XX'

Integer leadScore= 50;
Boolean hasEmail= true;
Boolean hasPhone= true;
Boolean hasTwitter= false;

if(hasEmail==true){
    leadScore += 20;
}
if(hasPhone== true){
    leadScore += 18;
}
if(HasTwitter== true){
    leadScore += 12;
}
System.debug('The lead score is: '+ leadScore);

//Task # 7
// Write an Apex code that store contactEmail and mailingState as String 
//    - check if a Contact's email is not null (!=null) and it's mailing state is Californina, 
//    - if both conditions are true, print out 'Valid Californnia Contact'

String contactEmail;
String mailingState= 'Vermont';
String isContactCalifornian;

if(contactEmail != null && mailingState== 'California'){
    isContactCalifornian= 'Valid California Contact'; 
}else{
    isContactCalifornian= '';
}
System.debug(isContactCalifornian);

//Task # 8
// Write an Apex code that store Case's Priority (casePriority) as String and is Tier One Customer or not(isTierOneCustomer) as Boolean.
//    - if isTierOneCustomer value true , print 'Tier 1 Customer, handle within 1 hour'
//    - else
//      - check if a Case's Priority is either 'High' or 'Critical' 
//        - if so , print out 'urgent case handle inn 6 hours'
//        - else print out 'handle within 2 days'

String casePriority= 'High';
Boolean isTierOneCustomer= false;
 if(isTierOneCustomer){
    System.debug('Tier 1 Customer, handle within 1 hour');
 }else{
    if(casePriority== 'High'|| casePriority == 'Critical'){
        System.debug('Urgent case , handle in 6 hourse');
    }else{
        System.debug('Handle withing 2 days');
    }
 }