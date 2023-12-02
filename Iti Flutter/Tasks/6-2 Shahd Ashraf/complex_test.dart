import 'dart:io';

import 'package:untitled1/complex.dart';

void SumComplex(Complex c1,Complex c2)
{
  int x=c1.r+c2.r;
  double y=c1.r1+c2.r1;
  print('r =$x and r1=$y');
}
void SubComplex(Complex c1,Complex c2)
{
  int x=c1.r-c2.r;
  double y=c1.r1-c2.r1;
  print('r =$x and r1=$y');
}
void MulComplex(Complex c1,Complex c2)
{
  int x=c1.r*c2.r;
  double y=c1.r1*c2.r1;
  print('r =$x and r1=$y');
}
void DivComplex(Complex c1,Complex c2)
{
  double x=c1.r/c2.r;
  double y=c1.r1/c2.r1;
  print('r =$x and r1=$y');
}
main()
{
 Complex A1=Complex(r: 10,r1: 4.5);
 Complex A2=Complex(r: 5, r1: 3.5);
 print('enter the operation you want ');
 print('1-addition');
 print('2-subtraction');
 print('3-multiplication');
 print('4-division');
 String o = stdin.readLineSync();
 switch (o) {
   case '1':
    SumComplex(A1, A2);
     break;
   case '2':
     SubComplex(A1, A2);
     break;
   case '3':
    MulComplex(A1, A2);
     break;
   case '4':
     DivComplex(A1, A2);
     break;
   default:
     print('Invalid operation');
 }
}