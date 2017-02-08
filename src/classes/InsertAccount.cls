global class InsertAccount implements Database.Batchable<sObject>{
global final String Query = 'select name from Account limit 2';


   global Database.QueryLocator start(Database.BatchableContext BC){
    return DataBase.getQueryLocator(Query);
   }
   global void execute(Database.BatchableContext BC,
                       List<sObject> scope){
            for (SObject sObj: scope)
            { 
                       Account acc = new Account(name = 'test');
            insert acc;
              }
            
            
             
           }  
   
   global void finish(Database.BatchableContext BC){
   }
}