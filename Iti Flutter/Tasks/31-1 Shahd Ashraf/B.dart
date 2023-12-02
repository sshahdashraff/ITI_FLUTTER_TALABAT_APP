import 'dart:io';

main()
{
  print('enter the degree of the 1st course');
  double course1 =double.parse(stdin.readLineSync());
  print('enter the degree of the 2nd course');
  double course2 =double.parse(stdin.readLineSync());
  print('enter the degree of the 3rd course');
  double course3 =double.parse(stdin.readLineSync());

  double d = course1+course2+course3;
  print('total degree = $d');
  double T = (d/300)*100;
  print('The total percentage = $T %');

  if(T>=86 && T<=100)
    print('Excellent');
  else if(T>=76 && T<=85)
    print('Very Good');
  else if(T>=66 && T<=75)
    print('Good');
  else if(T>50 && T<=65)
    print('Pass');
  else if(T>0 && T<50)
    print('Fail');
  else
    print('Invalid');


}