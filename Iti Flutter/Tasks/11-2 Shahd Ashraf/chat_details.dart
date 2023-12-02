import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  String path,name,message,hour;
  ChatDetails({String path,String name,String message,String hour}){
    this.path=path;
    this.name=name;
    this.message=message;
    this.hour=hour;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        color: Colors.black54,
        child: Column(
          children: [
            Text(name,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,

            ),),
         Image.asset(path),
            Text(message,
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.normal
            ),),
            Text(hour,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );

  }
}
