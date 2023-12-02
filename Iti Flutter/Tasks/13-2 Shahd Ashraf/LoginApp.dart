import 'package:flutter/material.dart';
import 'package:untitled1/Shahd%20Ashraf/skype_app.dart';
class LoginApp extends StatelessWidget {
  TextEditingController email=TextEditingController();
  TextEditingController Passwaord=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
    children: [
    Text('Log in',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 30,
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
      Padding(
        padding: const EdgeInsets.all(30),
        child: MaterialButton(onPressed: (){
          print(email);
          print(Passwaord);
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => SkypeApp(
      email.text,Passwaord.text
    ))
    );
    },

          minWidth: 300,
          height: 70,

          color: Colors.purple,
          child: Text('Login', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),),
        ),
      ),

    ],
    ),
      ),

    );

  }
}
