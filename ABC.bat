01
  //encyption goes here
02
  for(int l=0; l<cmessage.length; l++)
03
  {
04
    for(int o=0; o<v.size(); o++)
05
    {
06
      if(cmessage[l]==v.elementAt(o))
07
      {
08
        encrypt.addElement(new Character(newalphabet.elementAt(o)));
09
      }
10
     }//end of for loop
11
}//end of for
