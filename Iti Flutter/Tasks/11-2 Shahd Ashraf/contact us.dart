import 'package:flutter/material.dart';

class contactus extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTACT US',
          style: TextStyle(
              color: Colors.white
          ),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Center(
          child: Text('CONTACT US'
            ,
            style: TextStyle(
                color: Colors.white
            ),),
        ),
      ),
    );
  }
}
