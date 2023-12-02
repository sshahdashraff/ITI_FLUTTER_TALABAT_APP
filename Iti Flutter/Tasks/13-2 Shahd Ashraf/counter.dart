import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/bloc/LogicCounter.dart';

import '../bloc/StateCounter.dart';

class CounterApp extends StatefulWidget
{
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  @override
  Widget build(BuildContext context) {
   return BlocProvider(
       create: (context)=> CounterLogic(),
     child: BlocConsumer<CounterLogic,Counterstate>(
       listener: (context,state){},
       builder: (context,state){
         CounterLogic object=BlocProvider.of(context);
         return  Scaffold(
             appBar: AppBar(
               leading: Icon(Icons.account_circle_rounded,color: Colors.grey,
               ),
               actions: [
                 IconButton(onPressed: (){
                   print('photo');
                 },
                   icon: Icon(Icons.add_a_photo_rounded),),
                 IconButton(onPressed: (){
                   print('call');
                 },
                   icon: Icon(Icons.add_call),)
               ],
               backgroundColor: Colors.black54,
               title: Text('COUNTER'),
             ),
             body: Container(
               width: double.infinity,
               color: Colors.white,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text(object.s.toString(),
                       style: TextStyle(
                         color: Colors.blueAccent,
                         fontSize: 32,
                         fontWeight: FontWeight.bold,
                       )
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       MaterialButton(child: Text('+'),
                         onPressed: (){
                        object.plusS();
                         },
                         color: Colors.blueAccent,),
                       MaterialButton( child: IconButton(onPressed: (){},
                         icon: Icon(Icons.restart_alt_sharp,
                           size: 20,
                           color: Colors.black87,),),
                         onPressed: (){
                          object.restartS();
                         } ,
                         color: Colors.blueAccent,
                       ),
                       MaterialButton(child: Text('-'),
                         onPressed: (){
                          object.minusS();
                         },
                         color: Colors.blueAccent,),

                     ],
                   )
                 ],
               ),
             )
         );

       }
     )

   );
  }
}