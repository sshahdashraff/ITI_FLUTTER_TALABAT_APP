import 'dart:io';

import 'package:untitled1/car.dart';

main()
{
  Car c2=Car();
  print('enter the code ');
  c2.code=int.parse(stdin.readLineSync());
  print('enter the model ');
  c2.model=stdin.readLineSync();
  print('enter the color');
  c2.color=stdin.readLineSync();
  print('enter the price ');
  c2.price=double.parse(stdin.readLineSync());
  print('the code of the car = ${c2.code}');
  print('the model of the car =  ${c2.model}');
  print('the color of the car =  ${c2.color}');
  print('the price of the car =  ${c2.price}');
  Car c1=Car();
  c1.code=20;
  c1.model='yaris';
  c1.color='Silver';
  c1.price=300000;

  print('the code of the car = ${c1.code}');
  print('the model of the car =  ${c1.model}');
  print('the color of the car =  ${c1.color}');
  print('the price of the car =  ${c1.price}');
}
