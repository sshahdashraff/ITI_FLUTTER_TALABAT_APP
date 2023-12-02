import 'package:flutter/material.dart';
class StoryDetails extends StatelessWidget {

String title,url;
StoryDetails({String title,String url})
{
  this.title=title;
  this.url=url;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
      ),
      body: Container(
        width: double.infinity,
        color:Colors.black54,
        child: Column(
          children: [
            Text(title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),),
            Image.asset(url)

          ],
        ),
      ),
    );
  }
}
