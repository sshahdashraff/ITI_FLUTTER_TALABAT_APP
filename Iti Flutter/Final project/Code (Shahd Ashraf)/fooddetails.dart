import 'package:flutter/material.dart';
import 'package:untitled1/final_project/StateCounter.dart';
import 'package:untitled1/final_project/LogicCounter.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
class Fooddetails extends StatelessWidget {
  createalertdialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Thank you!',style: TextStyle(fontWeight: FontWeight.bold),),
        content: Text('your order has been confirmed!'),
      );
    });
  }
  String name,image,description,price;
  Fooddetails({String image, String name,String description,String price}){
    this.image=image;
    this.name=name;
    this.description=description;
    this.price=price;
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterLogic(),
      child: BlocConsumer<CounterLogic,Counterstate>(
        listener: (context,state){},
        builder: (context,state){
          CounterLogic obj=BlocProvider.of(context);
          return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Card( color: Colors.deepOrange.shade200,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [CircleAvatar(maxRadius: 150,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(image),
                        )]),
                  ),
                  Card(color: Colors.deepOrange.shade200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('Name:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                              Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                            ],),
                          Row(
                            children: [
                              Text('Description:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                              Text(description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                            ],),
                          Row(
                            children: [
                              Text('Price:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                              Text(price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                            ],)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 94,),
                  Text('How many do you want?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
                  SizedBox(height: 92,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(obj.s.toString()),
                    ],
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        child: Text('+'),
                        onPressed: (){
                          obj.plusS();
                        },
                        color: Colors.deepOrange,
                      ),
                      MaterialButton(
                        child: Icon(Icons.restart_alt_sharp),
                        onPressed: (){
                          obj.restartS();
                        },
                        color: Colors.deepOrange,
                      ),
                      MaterialButton(
                        child: Text('-'),
                        onPressed: (){
                          if(obj.s>0)
                          {obj.minusS();}
                        },
                        color: Colors.deepOrange,
                      ),
                      MaterialButton(
                        child: Text('Order'),

                        onPressed: (){
                          return createalertdialog(context);
                        },
                        color: Colors.deepOrange,
                      ),

                    ],
                  )
                ],

              ),
            ),
          );
        },
      ),


    );
  }
}