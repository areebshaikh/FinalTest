public class StringArrayTest{

public static List<String> generateStringArray(Integer lim)
{
String s;
List<String> str = new List<String>();
Integer i= 0;
while ( i < lim)
{s = 'Test ' + i;
i = i + 1;
str.add(s);
}

return str;
}


}