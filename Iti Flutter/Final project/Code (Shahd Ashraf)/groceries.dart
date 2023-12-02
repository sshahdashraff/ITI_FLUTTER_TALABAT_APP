import 'package:flutter/material.dart';
Widget groceriesss({String image, String name,String description,String price}){

  return Column(
    children: [
      Card(color: Colors.deepOrange.shade200,
        child: ListTile(
          title: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(description),
          leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage:AssetImage(image)
          ),
          trailing: Text(price),
        ),
      )
    ],
  );


}