import 'package:flutter/material.dart';

class Cal extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(leading: Icon(Icons.calculate,),
          backgroundColor: Colors.black87,
          title: Text('CALCULATOR'),

        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text('0',style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,



              ),),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(child: Text('1'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('2'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('3'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(child: Text('4'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('5'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('6'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(child: Text('7'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('8'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('9'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(child: Text('0'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('-'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('+'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(child: Text('*'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('/'),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                  MaterialButton(child: Text('C'),
                    onPressed: (){},
                    color: Colors.blueAccent,


                  ),
                  MaterialButton(child: Text('='),
                    onPressed: (){},
                    color: Colors.blueAccent,

                  ),
                ],
              )
            ],

          ),
        ),
      );
  }

}