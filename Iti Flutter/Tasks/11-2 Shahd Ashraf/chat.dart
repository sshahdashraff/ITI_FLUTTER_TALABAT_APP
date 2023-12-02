import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Shahd%20Ashraf/chat_details.dart';
import 'package:untitled1/Shahd%20Ashraf/story_details.dart';
import 'package:untitled1/components/chat%20scroll.dart';
import 'package:untitled1/components/story.dart';

class ChatApp extends StatelessWidget
{
  List chats=[
    {
      'path':'assets/images/33.png',
      'name': 'Shahd',
      'message': 'Hello',
      'hour': '22:00 pm'
    },
    {
      'path':'assets/images/31.png',
      'name': 'Mariam',
      'message': 'Hello',
      'hour': '20:10 pm'
    },
    {
      'path':'assets/images/32.png',
      'name': 'Habeba',
      'message': 'Hello',
      'hour': '19:30 pm'
    },
    {
      'path':'assets/images/33.png',
      'name': 'Alaa',
      'message': 'Hello',
      'hour': '18:50 pm'
    },
    {
      'path':'assets/images/31.png',
      'name': 'Jumana',
      'message': 'Hello',
      'hour': '18:00 pm'
    },
  ];
  List stories=[
    {
      'url': 'assets/images/33.png',
      'name': 'Shahd '
    },
    {
      'url': 'assets/images/31.png',
      'name': 'Mariam'
    },
    {
      'url': 'assets/images/32.png',
      'name': 'Habeba '
    },
    {
      'url': 'assets/images/33.png',
      'name': 'Alaa '
    },
    {
      'url': 'assets/images/31.png',
      'name': 'Jumana '
    },
  ];
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
               children: [
                 for(int i=0;i<stories.length;i++)
                 InkWell(
                   onTap: (){
                     Navigator.of(context).push(
                       MaterialPageRoute(builder: (c){
                         return StoryDetails(
                           url: stories[i]['url'],
                           title: stories[i]['url'],
                         );
                       })
                     );
                   },
                   child: storyRow(
                     image: stories[i]['url'],
                     title: stories[i]['name']
                   ),

                 ),

               ],
             ),
           ),
           SingleChildScrollView(
             child: Row(
               children: [
                 for(int i=0;i<chats.length;i++)
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (d){
                          return ChatDetails(
                            path: chats[i]['path'],
                            name: chats[i]['name'],
                            message: chats[i]['message'],
                            hour: chats[i]['hour'],
                          );

                        })
                      );
                    },
                    child: ChatScroll(
                      image: chats[i]['path'],
                      title: chats[i]['name'],
                      writing: chats[i]['message'],
                      time: chats[i]['hour'],
                    ),
                  )

               ],
             ),
           )
         ],
       ),
     ),
    );
  }

}