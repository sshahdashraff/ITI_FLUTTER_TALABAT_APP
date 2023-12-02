import 'package:flutter/material.dart';

class courses1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COURSES',
          style: TextStyle(
              color: Colors.white
          ),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Center(
          child: Text('COURSES',

            style: TextStyle(
                color: Colors.white
            ),),
        ),
      ),
    );
  }
}
