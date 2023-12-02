import 'package:flutter/material.dart';

Widget ChatScroll({String image,String title, String writing, String time})
{
 return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
            backgroundColor: Colors.blueAccent,
            backgroundImage: AssetImage(image)

        ),
        SizedBox(width: 30,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title,style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.bold) ),
            Text(writing,style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,) ),
          ],
        ),
        Expanded(child: Text(time,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 25
          ),
          textAlign: TextAlign.end,)
        ),
      ],


    ),
  );
}