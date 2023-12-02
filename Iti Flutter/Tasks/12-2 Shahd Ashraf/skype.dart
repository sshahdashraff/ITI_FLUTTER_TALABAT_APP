import 'package:flutter/material.dart';
import 'skype_app.dart';
class SkypePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
     height: double.infinity,
     color: Colors.black87,
     child: ListView(
       
       children: [
         for(int i=0;i<10;i++)
         Card(
           color: Colors.purpleAccent.withOpacity(0.2),
           child: ListTile(
             title: Text('Shrouk Ahmed',
             style: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.w600,
               fontSize: 20
             ),),
             subtitle: Text('hello',
             style: TextStyle(
               color: Colors.white70
             ),),
             leading: CircleAvatar(
               child: Text('SA',
               style: TextStyle(
                 color: Colors.white
               ),),
               backgroundColor: Colors.white30,
             ),
             trailing: Text('18:30 pm',
             style: TextStyle(
               color: Colors.white
             ),),
             
           ),
         )
       ],
       
     ),
   );
   
  }
}
