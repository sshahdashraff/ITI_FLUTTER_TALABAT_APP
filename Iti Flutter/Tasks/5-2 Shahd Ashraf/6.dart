import 'dart:io';

main()
{
  Map s={};
  print('enter the first value');
  int a=int.parse(stdin.readLineSync());
  print('enter the second value');
  int b =int.parse(stdin.readLineSync());
  print('enter the third value');
  int c =int.parse(stdin.readLineSync());
  s['x']=a;
  s['y']=b;
  s['z']=c;
  print(s['x']);
  print(s['y']);
  print(s['z']);
  print('the sum of the values = ${a+b+c}');
}