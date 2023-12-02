import 'package:flutter/material.dart';
import 'package:untitled1/Shahd%20Ashraf/LoginApp.dart';
import 'package:untitled1/Shahd%20Ashraf/skype.dart';
import 'package:untitled1/Shahd%20Ashraf/skypeCalls.dart';
import 'package:untitled1/Shahd%20Ashraf/skypeStarred.dart';
class SkypeApp extends StatelessWidget {
  String email;
  String Password;
  SkypeApp(String email,String Password){
    this.email=email;
    this.Password=Password;

  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          endDrawer: Drawer(

            child: Container(
              color: Colors.brown,
              child: ListView(
                children: [

                  UserAccountsDrawerHeader(
                      accountName: Text('Shahd Ashraf'),
                      accountEmail: Text(email),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/33.png'),
                  ),),
                  Divider(
                    color: Colors.yellow,
                      thickness: 2,
                    indent: 15,
                    endIndent: 15,
                  ),
                  Text(Password,
                  style: TextStyle(
                    color: Colors.white70
                  ),)
                  ,
                  Card(
                    color: Colors.purpleAccent,
                    child: ListTile(
                      title: Text('Home',
                        style: TextStyle(
                          color: Colors.white,
                        ) ,
                      ),
                      trailing: Icon(Icons.home_outlined),

                    ),
                  ),
                  Card(
                    color: Colors.purpleAccent,
                    child: ListTile(
                      title: Text('Settings',
                        style: TextStyle(
                          color: Colors.white,
                        ) ,
                      ),
                      trailing: Icon(Icons.settings_outlined),

                    ),
                  ),
                  Card(
                    color: Colors.purpleAccent,
                    child: ListTile(
                      title: Text('Logout',
                        style: TextStyle(
                          color: Colors.white,
                        ) ,
                      ),
                      trailing: Icon(Icons.logout_outlined),

                    ),
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purpleAccent,
            leading: Icon(Icons.social_distance),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Skype',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),),
            ),
            bottom: TabBar(
              indicatorColor: Colors.purple,
            indicatorWeight: 15,
              tabs: [
                Tab(
                  text: 'chats',
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  text: 'calls',
                  icon: Icon(Icons.call),
                ),
                Tab(
                  text: 'starred messages',
                  icon: Icon(Icons.star),
                )
              ],
            ),
          ),
          body:TabBarView(
            children: [
              SkypePage(),
              SkypeCalls(),
              SkypeStar(),
            ],
          )
        ));
  }
}
