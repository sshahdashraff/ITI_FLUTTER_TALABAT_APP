import 'dart:io';

main()
{
print('enter the start');
int s=int.parse(stdin.readLineSync());
print('enter the end');
int e=int.parse(stdin.readLineSync());
while(s<=e){
  print(s);
  s++;
}
while(e<=s){
  print(s);
  s--;
}
}