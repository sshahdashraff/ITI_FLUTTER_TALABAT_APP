import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:untitled1/Shahd%20Ashraf/button.dart';

class Cal extends StatefulWidget
{
  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  String s='0';

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
              Text(s,style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,





              ),),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  clr(
                    name: '1',
                    action: (){
                      setState(() {
                        s+='1';
                      });
                    }
                  ),
                  clr(
                      name: '2',
                      action: (){
                        setState(() {
                          s+='2';
                        });
                      }
                  ),
                  clr(
                      name: '3',
                      action: (){
                        setState(() {
                          s+='3';
                        });
                      }
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  clr(
                      name: '4',
                      action: (){
                        setState(() {
                          s+='4';
                        });
                      }
                  ),
                  clr(
                      name: '5',
                      action: (){
                        setState(() {
                          s+='5';
                        });
                      }
                  ),
                  clr(
                      name: '6',
                      action: (){
                        setState(() {
                          s+='6';
                        });
                      }
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  clr(
                      name: '7',
                      action: (){
                        setState(() {
                          s+='7';
                        });
                      }
                  ),
                  clr(
                      name: '8',
                      action: (){
                        setState(() {
                          s+='8';
                        });
                      }
                  ),
                  clr(
                      name: '9',
                      action: (){
                        setState(() {
                          s+='9';
                        });
                      }
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  clr(
                      name: '0',
                      action: (){
                        setState(() {
                          s+='0';
                        });
                      }
                  ),
                  clr(
                      name: '-',
                      action: (){
                        setState(() {
                          s+=' - ';
                        });
                      }
                  ),
                  clr(
                      name: '+',
                      action: (){
                        setState(() {
                          s+=' + ';
                        });
                      }
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  clr(
                      name: '*',
                      action: (){
                      setState(() {
                        s+=' * ';
                      });
                      }
                  ),
                  clr(
                      name: '/',
                      action: (){
                        setState(() {
                          s+=' / ';
                        });
                      }
                  ),
                  clr(
                      name: 'C',
                      action: (){
                        setState(() {
                          s=' ';
                        });
                      }
                  ),
                  clr(
                      name: '=',
                      action: (){
                        Parser p = Parser();
                        Expression exp = p.parse(s);
                        String result =
                        exp.evaluate(EvaluationType.REAL, null).toString();
                        setState(() {
                          s = result;
                        });



                      }


                  ),

                ],
              )
            ],

          ),
        ),
      );
  }
}