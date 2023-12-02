import 'dart:io';

class Student
{
  int code;
  String name;
  double degree;
  int age;
  int ssn;
  Student({int c1=0,String s1='user',double d1=0,int a1=0,int ss1=0 })
  {
    code=c1;
    name=s1;
    degree=d1;
    age=a1;
    ssn=ss1;
  }
  void PrintData()
  {
   print('code is $code');
   print('name is $name');
   print('degree is $degree');
   print('age is $age');
   print('ssn is $ssn');
  }
  void GetData()
  {
    print('enter code');
    code=int.parse(stdin.readLineSync());
    print('enter name');
    name=stdin.readLineSync();
    print('enter degree');
    degree=double.parse(stdin.readLineSync());
    print('enter age');
    age=int.parse(stdin.readLineSync());
    print('enter ssn');
    ssn=int.parse(stdin.readLineSync());

  }
}