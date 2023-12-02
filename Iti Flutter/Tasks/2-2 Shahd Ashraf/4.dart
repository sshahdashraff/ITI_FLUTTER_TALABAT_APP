import 'dart:io';

main()
{
print('enter the base');
int b=int.parse(stdin.readLineSync());
print('enter the power');
int p=int.parse(stdin.readLineSync());
int c=0;
int sum=1;

while(c<p){
  sum=sum*p;
      print(sum);
  c++;
}
}