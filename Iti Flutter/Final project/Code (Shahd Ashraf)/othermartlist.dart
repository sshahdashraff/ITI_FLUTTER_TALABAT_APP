import 'package:flutter/material.dart';
import 'package:untitled1/final_project/othermart.dart';
import 'food.dart';
import 'othermartdetails.dart';
class Otherlist extends StatelessWidget {
  List other=[
    {'url':'assets/images/18.jpeg',
      'name':'Book',
      'description':'1 Book',
      'price':'100 L.E'},
    {'url':'assets/images/19.jpeg',
      'name':'Jacket',
      'description':'Black leather jacket',
      'price':'1000 L.E'},
    {'url':'assets/images/20.jpeg',
      'name':'USB',
      'description':'1 100 GB USB Stick',
      'price':'180 L.E'},
    {'url':'assets/images/21.jpeg',
      'name':'Laptop',
      'description':'Lenovo Laptop',
      'price':'10000 L.E'},
    {'url':'assets/images/22.jpeg',
      'name':'School Bag',
      'description':'Black School bag',
      'price':'200 L.E'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('MORE SHOPS',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        leading: Icon(Icons.shopping_bag_outlined,size: 40,),
      ),

      body: SingleChildScrollView(
        child: Column(

          children:  [
            for(int i=0;i<other.length;i++)
              InkWell( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (x){
                  return Othermartdetails(
                      image: other[i]['url'],
                      name: other[i]['name'],
                      description: other[i]['description'],
                      price:other[i]['price']


                  );
                }));
              },
                  child:
                  othermarties(
                      image: other[i]['url'],
                      name: other[i]['name'],
                      description: other[i]['description'],
                      price:other[i]['price']
                  )


              ),
          ],
        ),
      ),
    );

  }
}