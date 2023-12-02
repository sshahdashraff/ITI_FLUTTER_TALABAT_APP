import 'package:flutter/material.dart';

class moreshops1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('MORE SHOPS',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        leading: Icon(Icons.shopping_bag_outlined,size: 40,),
      ),


      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Center(
          child: Text(' '
            ,
            style: TextStyle(
                color: Colors.black
            ),),
        ),
      ),
    );

  }
}
