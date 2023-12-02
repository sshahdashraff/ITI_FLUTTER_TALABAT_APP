import 'dart:convert';
import 'dart:io';

main() {
  String v = (stdin.readLineSync());
  int ch;
  int y;
  switch (v) {
    case 'married':
      ch = int.parse(stdin.readLineSync());
      if (ch >= 0 && ch <= 3)
        print('salary is ${1200 + ch * 150}');
      else if (ch >= 4 && ch <= 6)
        print('salary is ${1800 + ch * 250}');
      else if (ch >= 7)
        print('salary is ${2000 + ch * 300}');
      break;

    case 'single':
      y = int.parse(stdin.readLineSync());
      if (y >= 0 && y <= 5)
        print('salary is ${1000 + y * 200}');
      else if (y >= 6 && y <= 10)
        print('salary is ${1500 + y * 500}');
      else if (y >= 11)
        print('salary is ${2000 + y * 600}');
      break;
  }
}