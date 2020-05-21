import 'package:flutter/material.dart';

import 'helper.dart';

void main(){
  runApp(MaterialApp(
    title: 'Drawer',
    home: MyDrawerApp(),
  ));
}

class MyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer'),backgroundColor: Color(Helper.getHexToInt("#ffa502"))),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('images/banana2.jpg'),
                Positioned(
                  left: 30,
                  bottom: 50,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/asad.jpg'),
                      radius: 150.0,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 20,
                  child: Text('Hi, This is Asad', style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ],
            ),

            SizedBox(height: 25),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('MailBox'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.mic),
              title: Text('Records'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text('New Record'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
