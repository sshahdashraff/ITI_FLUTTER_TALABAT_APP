import 'package:flutter/material.dart';
import 'package:untitled1/final_project/Talabat.dart';

import 'createaccount.dart';
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email=TextEditingController();

  TextEditingController Passwaord=TextEditingController();
  var x=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Talabat',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(Icons.shopping_cart,size: 40,),
      ),
      body:Container(
        child: Column(
          children: [
            Text('Log in',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
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
                obscureText: x,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'enter your password',
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.password,),
                  suffixIcon:IconButton(
                    iconSize: 20,
                    icon: Icon(
                      x ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: (){
                      setState((){
                        x=!x;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            MaterialButton(onPressed: (){
                print(email);
                print(Passwaord);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Talabat(
                        email.text,Passwaord.text
                    ))
                );
              },

                minWidth: 300,
                height: 70,

                color: Colors.deepOrangeAccent,
                child: Text('Login', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
              ),

            TextButton(
                onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (x){
                  return Createacc();
                }));},
                child:
            Text("Don't have an account? create an account",
              style: TextStyle(
                  color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold),
            ))

          ],
        ),
      ),

    );

  }
}
