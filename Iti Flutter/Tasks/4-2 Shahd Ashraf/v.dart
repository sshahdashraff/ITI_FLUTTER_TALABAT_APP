import 'dart:io';

main()
{
  List myList=[];
  print("enter the size of the list");
  int size=int.parse(stdin.readLineSync());
  print("enter the values");
  for(int i=1;i<=size;i++)
    {
      myList.add(int.parse(stdin.readLineSync()));
    }
  for(int i=0;i<myList.length;i++){
    print(myList[i]);
  }

      var max=myList[0];
      var min=myList[0];
      int sum=0;
      for(int i=1;i<myList.length;i++ ) {
        print(myList[i]);
        sum = sum = sum + myList[i];
        if (myList[i] > max);

        max = myList[i];
        if (myList[i] < min)
          min = myList[i];
      }
       print('sum is $sum');
       print('average = ${sum/size}');
       print('max = $max');
       print('min = $min');





}