import 'dart:io';

main()
{
  Map myMap={};
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
        print('what the key ?');
        int k=int.parse(stdin.readLineSync());
        print('what is the value ?');
        int v=int.parse(stdin.readLineSync());
        myMap.addAll({k : v} as Map);
        print(myMap);
        break;
      case 2 :

        print('what is the key of the value you want to update ?');
        int key=int.parse(stdin.readLineSync());
        print('replace value');
        int c=int.parse(stdin.readLineSync());
        if(myMap.containsKey(key==true)) {
          myMap.remove(key);
          myMap.addAll({key:c});
        }
        else
          print("the value you want to update isn't in the map.");
        break;

      case 3 :
        print('what is the key of the value  you want to remove ?');
        int a =int.parse(stdin.readLineSync());
        if(myMap.containsKey(a)) {
          myMap.remove(a);
        }
        else
          print("the value you want to remove isn't in the map");

        break;

      case 4 :
          print(myMap);
        break;

      default:
        print('invalid operation');



    }
    print("Do you want any another operation?");
    i=(stdin.readLineSync());


  }while(i=='yes');

}