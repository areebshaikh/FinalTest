public class AccountHandler{

public static Account insertNewAccount(String str)
{
try
{
Account a = new Account(Name = str);
insert a;
return a;
}


catch(Exception e)
{
return null;
}
}
}