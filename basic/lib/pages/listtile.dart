import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListTile",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(55, 144, 80, 12),
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 88, 158, 215),
        centerTitle: true,
        actions: [Icon(Icons.message_sharp)],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Innocent kiwoly"),
            subtitle: Text("Mobile developer"),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
            onTap: () {
              print("on Tap 1");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lucas David"),
            subtitle: Text("Website developer"),
            trailing: Icon(Icons.arrow_back_ios_new_rounded),
            onTap: () {
              print("on Tap 2");
            },
          ),

          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
            child: Text(
              "Go to next page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
