public class ContactSearch{

public static List<Contact> searchForContacts(String lname, String postal)
{
List<Contact> FinalCon = new List<Contact>();
List<Contact> Con = [select Id,name from Contact where (lastname = :lname and MailingPostalCode = :postal)];
for(Contact C : Con)
{
FinalCon.add(C);
}

return FinalCon;
}


}