import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.wechat_sharp),
        backgroundColor: Colors.blueGrey,
        title: Text('CHATS',
        style: TextStyle(
          fontWeight:FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [CircleAvatar(
                            maxRadius: 28,
                            child: Image.asset('assets/images/33.png'),
                            backgroundColor: Colors.grey,
                          ),
                            Text('Shahd',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,) ),

                          ],
                        ),

                      ),
                      SizedBox(width: 40,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [CircleAvatar(
                            maxRadius: 28,
                            child: Image.asset('assets/images/31.png'),
                            backgroundColor: Colors.grey,
                          ),
                            Text('Mariam',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,) ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [CircleAvatar(
                            maxRadius: 28,
                            child: Image.asset('assets/images/32.png'),
                            backgroundColor: Colors.grey,
                          ),
                            Text('Habeba',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,) ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [CircleAvatar(
                            maxRadius: 28,
                            child: Image.asset('assets/images/33.png'),
                            backgroundColor: Colors.grey,
                          ),
                            Text('Alaa',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,) ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [CircleAvatar(
                            maxRadius: 28,
                            child: Image.asset('assets/images/31.png'),
                            backgroundColor: Colors.grey,
                          ),
                            Text('Jumana',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,) ),

                          ],
                        ),
                      ),




                    ],


                  ),

              ),

            SizedBox(height: 35,),
            SingleChildScrollView(
              child: Column(
                children: [
                    Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                          children: [
                            CircleAvatar(
                              child:
                              Image.asset('assets/images/33.png'),
                              backgroundColor: Colors.blueAccent,

                            ),
                            SizedBox(width: 30,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Shahd Ashraf',style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                fontWeight: FontWeight.bold) ),
                                Text('Hello',style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 20,) ),
                              ],
                            ),
                            Expanded(child: Text('20:50 pm',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25
                              ),
                              textAlign: TextAlign.end,)
                            ),
                          ],


                        ),
                     ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        CircleAvatar(
                          child:
                          Image.asset('assets/images/31.png'),
                          backgroundColor: Colors.blueAccent,

                        ),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Mariam Hussam',style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold) ),
                            Text('Hello',style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,) ),
                          ],
                        ),
                        SizedBox(width: 474,),
                       Expanded(child: Text('20:10 pm',
                       style: TextStyle(
                         color: Colors.grey,
                         fontSize: 25
                       ),
                       textAlign: TextAlign.end,)
                       ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        CircleAvatar(
                          child:
                          Image.asset('assets/images/32.png'),
                          backgroundColor: Colors.blueAccent,

                        ),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Habeba Salama',style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold) ),
                            Text('Hello',style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,) ),
                          ],
                        ),
                        SizedBox(width: 478,),
                       Expanded(child: Text(' 19:40 pm',
                       style: TextStyle(
                         color: Colors.grey,
                         fontSize: 25,
                       ),
                       textAlign: TextAlign.end,))
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        CircleAvatar(
                          child:
                          Image.asset('assets/images/33.png'),
                          backgroundColor: Colors.blueAccent,

                        ),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Alaa Hussam',style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold) ),
                            Text('Hello',style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,) ),
                          ],
                        ),
                        SizedBox(width: 500,),
                        Expanded(child: Text('19:00 pm',
                       style: TextStyle(
                         color: Colors.grey,
                         fontSize: 25
                       ),
                        textAlign: TextAlign.end,),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        CircleAvatar(
                          child:
                          Image.asset('assets/images/31.png'),
                          backgroundColor: Colors.blueAccent,

                        ),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Jumana Waleed',style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold) ),
                            Text('Hello',style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,) ),
                          ],
                        ),
                        Expanded(child: Text(
                          '18:00 pm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.end
                          ,
                        ) )

                      ],

                    ),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}