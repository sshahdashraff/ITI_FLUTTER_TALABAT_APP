import 'package:flutter/material.dart';
import 'package:untitled1/final_project/healthdetails.dart';
import 'health.dart';

class Healthlist extends StatelessWidget {
  List health=[
    {'url':'assets/images/8.jpeg',
      'name':'Tylenol ',
      'description':'For relieving pain and fever',
      'price':'80 L.E'},
    {'url':'assets/images/9.jpeg',
      'name':'Ativan.',
      'description':'Ativan can help reduce many of the common symptoms of anxiety',
      'price':'100 L.E'},
    {'url':'assets/images/10.jpeg',
      'name':'Mavyret',
      'description':'MAVYRET is a prescription medicine used to treat chronic hepatitis C virus',
      'price':'150 L.E'},
    {'url':'assets/images/11.jpeg',
      'name':'Meloxicam',
      'description':'Meloxicam is an anti-inflammatory drug used to relieve arthritis',
      'price':'80 L.E'},
    {'url':'assets/images/12.jpeg',
      'name':'panadol',
      'description':'Panadol is uses to treat common cold and relieve headaches',
      'price':'60 L.E'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('HEALTH',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        leading: Icon(Icons.medical_information_outlined,size: 40,),
      ),

      body: SingleChildScrollView(
        child: Column(

          children:  [
            for(int i=0;i<health.length;i++)
              InkWell( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (x){
                  return Healthdetails(
                      image: health[i]['url'],
                      name: health[i]['name'],
                      description: health[i]['description'],
                      price:health[i]['price']


                  );
                }));
              },
                  child:
                  healthies(
                      image: health[i]['url'],
                      name: health[i]['name'],
                      description: health[i]['description'],
                      price:health[i]['price']
                  )


              ),
          ],
        ),
      ),
    );

  }
}