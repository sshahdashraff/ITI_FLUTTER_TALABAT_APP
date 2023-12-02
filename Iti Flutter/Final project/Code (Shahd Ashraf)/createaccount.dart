import 'package:flutter/material.dart';
import 'package:untitled1/final_project/Login.dart';
class Createacc extends StatelessWidget {
  TextEditingController email=TextEditingController();
  TextEditingController Passwaord=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Talabat',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(Icons.shopping_cart,size: 40,),
      ),
      body: Column(

        children: [
          Text('Create account',style:  TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'enter your email address',
                label: Text('Email Address'),
                prefixIcon: Icon(Icons.email_outlined,),
                suffixIcon: Icon(Icons.alternate_email_outlined),
              ),
            ),
          ),

          SizedBox(height: 75,),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextFormField(
              controller: Passwaord,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'enter your password',
                label: Text('Password'),
                prefixIcon: Icon(Icons.password,),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined

                  ),),
              ),
            ),
          ),
          SizedBox(height: 25,),
          MaterialButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (x){
            return Login();
          }));},
            color: Colors.deepOrangeAccent,
            minWidth: 300,
            height: 70,

            child: Text('Create account',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),),

        ],

      ),

    );
  }
}