import 'package:flutter/material.dart';
import 'fooddetails.dart';
import 'foodlist.dart';


import 'food.dart';
class Foodlist extends StatelessWidget {
  List food=[
    {'url':'assets/images/0.jpeg',
      'name':'Burger',
      'description':'Sesame seed bun ,lettuce,tomatoes,cheese,200gm patty with bacon',
      'price':'80 L.E'},
    {'url':'assets/images/1.jpeg',
      'name':'Pizza',
      'description':'Medium sized pizza with cheese, black olives and pepperoni toppings ',
      'price':'100 L.E'},
    {'url':'assets/images/2.jpeg',
      'name':'Sushi',
      'description':'Nori, sushi rice, smoked salmon, philadelphia cheese and avocado',
      'price':'150 L.E'},
    {'url':'assets/images/3.jpeg',
      'name':'Fried chicken',
      'description':'8 pieces of chicken coated with seasoned flour ',
      'price':'80 L.E'},
    {'url':'assets/images/4.jpeg',
      'name':'Crepe',
      'description':'A nutella crepe with ice cream on it and a cherry on top',
      'price':'60 L.E'},
    {'url':'assets/images/5.jpeg',
      'name':'some Shawerma',
      'description':'A chicken shawerma sandwich with lettuce and tomatoes ',
      'price':'60 L.E'},
    {'url':'assets/images/6.jpeg',
      'name':'waffles',
      'description':'Belgian waffles covered in honey and butter',
      'price':'50 L.E'},
    {'url':'assets/images/7.jpeg',
      'name':'fish',
      'description':'1 Fish cooked with lemon and oil',
      'price':'150 L.E'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('FOOD',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        leading: Icon(Icons.fastfood_outlined,size: 40,),
      ),

      body: SingleChildScrollView(
        child: Column(

          children:  [
            for(int i=0;i<food.length;i++)
              InkWell( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (x){
                  return Fooddetails(
                      image: food[i]['url'],
                      name: food[i]['name'],
                      description: food[i]['description'],
                      price:food[i]['price']


                  );
                }));
              },
                  child:
                  foodies(
                      image: food[i]['url'],
                      name: food[i]['name'],
                      description: food[i]['description'],
                      price:food[i]['price']
                  )


              ),
          ],
        ),
      ),
    );

  }
}