import 'dart:io';

  main()
{
  List myList=[];
  String i;
  do
  {
    print('This is our list of operations ');
    print('Choose th no. of the operation what you want');
  print('1-add');
  print('2-update');
  print('3-delete');
  print('4-show');

  int x=int.parse(stdin.readLineSync());
  switch(x)
  {
    case 1 :
      print('what do you want to add ?');
      myList.add(int.parse(stdin.readLineSync()));
      print(myList);
      break;
    case 2 :
      print('which value do you want to update ?');
      int u =int.parse(stdin.readLineSync());
      print('what is the index ?');
      int index=int.parse(stdin.readLineSync());
      if(myList.contains(u)) {
        myList[index]=u;
      }
      else
        print("the value you want to update isn't in the list.");
      break;

    case 3 :
      print('which value do you want to remove ?');
      int a =int.parse(stdin.readLineSync());
      if(myList.contains(a)) {
        print(myList.remove(a));
      }
        else
          print("the value you want to remove isn't in the list");

      break;

    case 4 :
      for(int i=0;i<myList.length;i++)
        print(myList[i]);
      break;

    default:
      print('invalid operation');



  }
 print("Do you want any another operation?");
   i=(stdin.readLineSync());


    }while(i=='yes');

}