public without sharing class CanvasController {

    public string acctExtId {get; set;}
    public Account acct {get;set;}
    public List<Order> orders {get; set;}
    
    public void setacctExtId()
    {
        //comment for a new change
        system.debug('external id is: ' + acctExtId);
        List<account> accts = [select name from account where external_id__c =: acctExtId];
        if (accts <> null && accts.size() <> 0)
            acct = accts.get(0);
        orders = [select totalamount,ordernumber from order where account.external_id__c =: acctExtId];
    }
    
    public void redirect()
    {
        
    }
    
    public PageReference setOrders()
    {
        return null;
    }
}