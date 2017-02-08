trigger AccountAddressTrigger on Account (before Insert, before Update) {

for(Account a : Trigger.new)
{
if(a.Match_Billing_Address__c == true)
{
a.ShippingPostalCode = a.BillingPostalCode;
}
}

}