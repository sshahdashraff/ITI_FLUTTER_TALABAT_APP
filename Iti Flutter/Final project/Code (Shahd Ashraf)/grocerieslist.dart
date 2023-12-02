import 'package:flutter/material.dart';
import 'package:untitled1/final_project/groceries.dart';
import 'grocerydetails.dart';
class Grocerylist extends StatelessWidget {
  List grocery=[
    {'url':'assets/images/13.jpeg',
      'name':'Eggs',
      'description':'30 Red eggs box',
      'price':'110 L.E'},
    {'url':'assets/images/14.jpeg',
      'name':'Milk',
      'description':'1 Liter Glass of milk',
      'price':'40 L.E'},
    {'url':'assets/images/15.jpeg',
      'name':'Bread',
      'description':'1 Loaf of brad',
      'price':'50 L.E'},
    {'url':'assets/images/16.jpeg',
      'name':'Bananas',
      'description':'1 Kilogram of banana',
      'price':'30 L.E'},
    {'url':'assets/images/17.jpeg',
      'name':'Cucumbers',
      'description':'1 Kilo of cucumbers ',
      'price':'60 L.E'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('GROCERIES',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        leading: Icon(Icons.local_grocery_store_outlined,size: 40,),
      ),
      body: SingleChildScrollView(
        child: Column(

          children:  [
            for(int i=0;i<grocery.length;i++)
              InkWell( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (x){
                  return Grocerydetails(
                      image: grocery[i]['url'],
                      name: grocery[i]['name'],
                      description: grocery[i]['description'],
                      price:grocery[i]['price']


                  );
                }));
              },
                  child:
                  groceriesss(
                      image: grocery[i]['url'],
                      name: grocery[i]['name'],
                      description: grocery[i]['description'],
                      price:grocery[i]['price']
                  )


              ),
          ],
        ),
      ),
    );

  }
}