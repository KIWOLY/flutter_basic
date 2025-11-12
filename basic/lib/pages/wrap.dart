import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: true,
        actions: [Icon(Icons.home)],
        title: Text(
          "Wrap",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Text("Hellow  its row  but have effect "),
              Text("if applied to the small size screen "),
              Text("so it better to use wrap"),
            ],
          ),
          SizedBox(height: 80),

          Wrap(
            children: [
              Text("Hellow  its wrap have  no effect"),
              Text("if applied to the small size screen"),
              Text("so it better to use wrap instead of using row"),
            ],
          ),
          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: Text(
              "Go Back",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
