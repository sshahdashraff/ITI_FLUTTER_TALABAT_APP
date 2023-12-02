import 'package:flutter/material.dart';
class SkypeStar  extends StatelessWidget {


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
                title: Text('shereen',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),),
                subtitle: Text('Welcome',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.4)
                  ),),
                leading: CircleAvatar(
                  child: Text('S',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  backgroundColor: Colors.white30,
                ),
                trailing: Text('12:40 pm',
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
