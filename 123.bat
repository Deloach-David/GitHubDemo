001
import java.io.*;
002
import java.util.*;
003
public class MixedAlphabet
004
{
005
  public static void main(String args[])throws IOException
006
  {
007
    String keyword;
008
    String message;
009
    BufferedReader input=new BufferedReader(new InputStreamReader(System.in));
010
     
011
    Vector <Character> v=new Vector<Character>();
012
    Vector <Character> newalphabet=new Vector<Character>();
013
    Vector <Character> encrypt=new Vector<Character>();
014
    char alphabet[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
015
    for(int b=0; b<30; b++)
016
    {
017
    System.out.print("\n");
018
    }
019
    do{
020
    System.out.print("Enter keyword:");
021
   keyword=input.readLine();
022
    if(keyword.length()>26)
023
    {
024
    System.out.print("Error. Keyword length must only consist of 26 character!\n");
025
    }
026
    }while(keyword.length()>26);
027
    char[] ckeyword = keyword.toCharArray();
028
    for (int x=0; x<alphabet.length; x++)
029
        {
030
          v.addElement(new Character(alphabet[x]));
031
        }//end of for loop
032
        
033
         
034
        for (int x=0; x<v.size(); x++)//print full alphabet
035
        {
036
         System.out.print(v.elementAt(x) + " ");
037
        }//end of for loop
038
         
039
        //remove keyword from alphabet
040
      for(int y=0; y<ckeyword.length; y++)
041
      {
042
        for(int z=0; z<v.size(); z++)
043
          {
044
            if(v.elementAt(z)==ckeyword[y])
045
            {
046
              v.removeElementAt(z);
047
            }
048
           }//end of for loop
049
      }//end of for
050
                
051
             
052
      //creating new alphabet with keyword and letters remained
053
      for (int t=0; t<26; t++)
054
        {
055
          if(t<ckeyword.length)
056
          {
057
            newalphabet.addElement(new Character(ckeyword[t]));
058
          }
059
           
060
          if(t>=ckeyword.length)
061
          {
062
            newalphabet.addElement(new Character(v.elementAt(t-ckeyword.length)));
063
          }
064
         }//end of for loop
065
          
066
          
067
        System.out.print("\n");
068
       
069
      //print new alphabet with keyword
070
       for(int u=0; u<newalphabet.size(); u++)
071
       {
072
        System.out.print(newalphabet.elementAt(u) + " ");
073
        }
074
         
075
        //enter message
076
        System.out.print("\nEnter message: ");
077
        message=input.readLine();
078
        char[] cmessage = message.toCharArray();
079
         
080
         
081
        //encyption goes here
082
        for(int l=0; l<cmessage.length; l++)
083
        {
084
          for(int o=0; o<v.size(); o++)
085
          {
086
            if(cmessage[l]==v.elementAt(o))
087
            {
088
              encrypt.addElement(new Character(newalphabet.elementAt(o)));
089
            }
090
           }//end of for loop
091
      }//end of for
092
      System.out.print("\n");
093
      //print encrypted message
094
      System.out.print("ciphertext: ");
095
      for(int k=0; k<encrypt.size(); k++)
096
      {
097
        System.out.print(encrypt.elementAt(k));
098
       }
099
    }//end of main
100
}//end of class
101
    
