import 'package:flutter/material.dart';
class SkypeCalls extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black87,
      child: ListView(

        children: [
          for(int i=0;i<10;i++)
            Card(
              color: Colors.purpleAccent.withOpacity(0.2),
              child: ListTile(
                title: Text('Mariam Hussam',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),),
                subtitle: Text('Incoming Call',
                  style: TextStyle(
                      color: Colors.blueGrey
                  ),),
                leading: CircleAvatar(
                  child: Text('MH',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  backgroundColor: Colors.white30,
                ),
                trailing: Text('17:00 pm',
                  style: TextStyle(
                      color: Colors.white
                  ),),

              ),
            )
        ],

      ),
    );

  }
}
