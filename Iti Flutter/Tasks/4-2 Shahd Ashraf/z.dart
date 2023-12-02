import 'dart:io';

main()
{
  print('enter the start ');
  int s=int.parse(stdin.readLineSync());
  print('enter the end ');
  int e=int.parse(stdin.readLineSync());
  print('enter the first no. ');
  int a=int.parse(stdin.readLineSync());
  print('enter the last no. ');
  int b=int.parse(stdin.readLineSync());

  for(int i=s;i <=e;i++ )
    {
      for(int j=a; j<=b ;j++)
        stdout.write('$i*$j=${i*j} ');
      print(' ');
    }

}