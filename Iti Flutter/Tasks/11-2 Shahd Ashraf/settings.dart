import 'package:flutter/material.dart';

class settings1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SETTINGS',
          style: TextStyle(
              color: Colors.white
          ),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Center(
          child: Text('SETTINGS'
            ,
            style: TextStyle(
                color: Colors.white
            ),),
        ),
      ),
    );
  }
}
