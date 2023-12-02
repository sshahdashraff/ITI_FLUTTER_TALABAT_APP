import 'package:flutter/material.dart';
import 'package:untitled1/Shahd%20Ashraf/contact%20us.dart';
import 'package:untitled1/Shahd%20Ashraf/courses.dart';
import 'package:untitled1/Shahd%20Ashraf/home.dart';
import 'package:untitled1/Shahd%20Ashraf/settings.dart';

class home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.blueGrey,
    leading: Text('OUR PAGE',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,

    ),)

  ),
  body:  Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.black,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell( onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => home1() ),
              );


            },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: Column(
                  children: [
                    Text('home',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.home,
                        size: 50,
                        color: Colors.yellow,),
                    ),
                  ],
                ),
              ),

            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => courses1() ),
                );

              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: Column(
                  children: [
                    Text('Courses',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.my_library_books_outlined,
                        size: 50,
                        color: Colors.yellow,),
                    ),
                  ],
                ),
              ),

            ),
          ],
        ),
        SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => contactus() ),
                );

              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Contact Us',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.call_outlined,
                          size: 50,
                          color: Colors.yellow,),
                    ),
                  ],
                ),
              ),

            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => settings1() ),
                );

              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white70
                ),
                child: Column(
                  children: [
                    Text('Settings',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.settings_outlined,
                      size: 50,
                      color: Colors.yellow,),
                    ),

                  ],
                ),
              ),

            ),
          ],
        )
      ],
    ),
  ),
);
  }

}