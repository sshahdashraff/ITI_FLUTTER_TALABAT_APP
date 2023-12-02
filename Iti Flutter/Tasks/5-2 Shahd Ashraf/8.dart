import 'dart:io';

double m1(double x1,double x2)
{
  return x1+x2;
}
double m2(double y1,double y2)
{
  return y1-y2;
}
double m3(double z1,double z2)
{
  return z1*z2;
}
double m4(double v1,double v2)
{
  return v1/v2;
}

main() {
  String i;

  do {
    print('enter the 1st number');
    double A1 = double.parse(stdin.readLineSync());
    print('enter the 2nd number');
    double A2 = double.parse(stdin.readLineSync());
    print('enter the operation you want ');
    print('1-addition');
    print('2-subtraction');
    print('3-multiplication');
    print('4-division');
    String o = stdin.readLineSync();
    switch (o) {
      case '1':
        print(m1(A1, A2));
        break;
      case '2':
        print(m2(A1, A2));
        break;
      case '3':
        print(m3(A1, A2));
        break;
      case '4':
        print(m4(A1, A2));
        break;
      default:
        print('Invalid operation');
    }
    print("Do you want any another operation?");
    i = (stdin.readLineSync());
  } while (i == 'yes');
}