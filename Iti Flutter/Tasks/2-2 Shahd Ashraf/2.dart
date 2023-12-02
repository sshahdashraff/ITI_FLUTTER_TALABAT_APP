import 'dart:io';

main()
{
  print("enter the first number");
int n=int.parse(stdin.readLineSync());
print("enter the last number");
int r=int.parse(stdin.readLineSync());
while(n<r ){
  n++;
  if(n%3==0)
    print(n);
}
}