import 'package:flutter/material.dart';

Widget storyRow({String image,String title})
{
  return    Padding(
    padding: const EdgeInsets.all(10),
    child: Column(

      children: [CircleAvatar(
          maxRadius: 28,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage(image)
      ),
        Text(title,style: TextStyle(
          color: Colors.grey,
          fontSize: 20,) ),

      ],
    ),

  );
}