import 'package:flutter/material.dart';
import 'package:untitled1/final_project/Login.dart';
import 'package:untitled1/final_project/foodlist.dart';
import 'package:untitled1/final_project/grocerieslist.dart';
import 'package:untitled1/final_project/grocerydetails.dart';
import 'package:untitled1/final_project/healthlist.dart';
import 'package:untitled1/final_project/othermart.dart';
import 'package:untitled1/final_project/othermartlist.dart';

import 'more shops.dart';

class Talabat extends StatelessWidget
{
  String email;
  String Password;
  Talabat(String email,String Password){
    this.email=email;
    this.Password=Password;

  }
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        endDrawer: Drawer(

          child: Container(
            color: Colors.white,
            child: ListView(
              children: [

                UserAccountsDrawerHeader(
                  accountName: Text(email,
                  style: TextStyle(
                    color: Colors.black
                  ),),
                  accountEmail: Text(Password,
                  style: TextStyle(
                    color: Colors.black
                  ),),
                  currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                    child: Text('t',
                      style: TextStyle(
                        color: Colors.deepOrange.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 35
                      ),
                    ),
                  ),),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  indent: 15,
                  endIndent: 15,
                ),


                Card(
                  color: Colors.deepOrange,
                  child: ListTile(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c){
                          return Login();
                        })
                      );
                    },
                    title: Text('Logout',
                      style: TextStyle(
                        color: Colors.white,
                      ) ,
                    ),
                    trailing: Icon(Icons.logout_outlined),

                  ),
                ),
              ],
            ),
          ),
        ),
      appBar:AppBar(
        title: Text('Talabat',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        leading: Icon(Icons.shopping_cart,size: 40,),
      ),
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell( onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Foodlist() ),
                  );


                },
                  child: Container(
                    width: 230,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                    border: Border.all(color: Colors.black,
                    width: 5)
                    ),
                    child: Column(

                      children: [
                        SizedBox(height: 15,),
                        Text('Food',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.food_bank_outlined,
                            size: 50,
                            color: Colors.white,),
                        ),
                      ],
                    ),
                  ),

                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  Grocerylist() ),
                    );

                  },
                  child: Container(
                    width: 230,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.shade200,
                        border: Border.all(color: Colors.black,
                            width: 5)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Center(
                          child: Text('Groceries',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.local_grocery_store_outlined,
                            size: 50,
                            color: Colors.white,),
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
                      MaterialPageRoute(builder: (context) => Healthlist() ),
                    );

                  },
                  child: Container(
                    width: 230,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.shade200,
                        border: Border.all(color: Colors.black,
                            width: 5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Text('Health ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.medical_information_outlined,
                            size: 50,
                            color: Colors.white,),
                        ),
                      ],
                    ),
                  ),

                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Otherlist() ),
                    );

                  },
                  child: Container(
                    width: 230,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent.shade200,
                        border: Border.all(color: Colors.black,
                            width: 5)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text('More Shops',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.shopping_bag_outlined,
                            size: 50,
                            color: Colors.white,),
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