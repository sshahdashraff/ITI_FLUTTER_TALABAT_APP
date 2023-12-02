import 'package:flutter/material.dart';
 


main()
{
  runApp(FirstApp());

}
class FirstApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded,color: Colors.grey,
          ),
          actions: [
            IconButton(onPressed: (){
              print('photo');
            },
            icon: Icon(Icons.add_a_photo_rounded),),
           IconButton(onPressed: (){
              print('call');
            },
             icon: Icon(Icons.add_call),)
          ],
          backgroundColor: Colors.teal,
          title: Text('Shahd'),
        ),
        body: Column(
          children: [
            Text('java',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
            ),
            SizedBox(height: 10,),
            Text('html',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),

            )
          ],
        ),
      ),
    );
  }

}