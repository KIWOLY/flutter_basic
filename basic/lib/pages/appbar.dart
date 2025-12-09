import 'package:basic/pages/navbar.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_a_photo),
        title: Text("App bar"),
        centerTitle: true,
        // actions: [Text("Team"), Icon(Icons.telegram)],
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Text("on appbar it have leading , title , centerTitle, Actions  "),
          Text("Actions is list "),
          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: Text("Go back"),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBarPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: Text("Go to NavBar"),
          ),
        ],
      ),
    );
  }
}
