import 'package:flutter/material.dart';
Widget foodies({String image, String name,String description,String price}){

  return Column(
    children: [
      Card(color: Colors.deepOrange.shade200,
        child: ListTile(
          title: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(description),
          leading: CircleAvatar(
              backgroundImage:AssetImage(image)
          ),
          trailing: Text(price),
        ),
      )
    ],
  );


}