import 'dart:io';

main()
{
  print('enter two numbers');
  int x = int.parse(stdin.readLineSync());
  int y = int.parse(stdin.readLineSync());
  print('enter the operator');
  String o = stdin.readLineSync();
  switch(o)
  {
    case'+':
      print(x+y);
      break;

    case'-':
      print(x-y);
      break;

    case'*':
      print(x*y);
      break;

    case'/':
      print(x/y);
      break;
  }

}