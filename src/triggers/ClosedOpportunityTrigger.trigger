trigger ClosedOpportunityTrigger on Opportunity (after Insert, after Update) {

List<Task> t = new List<Task>();
for(Opportunity o : Trigger.new)
{
if(o.StageName == 'Closed Won')
{
Task a = new Task(Subject = 'Follow up Test Task', WhatId = o.Id);
t.add(a);
}

}
upsert t;

}