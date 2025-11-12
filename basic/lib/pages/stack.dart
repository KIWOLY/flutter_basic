import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack",
          style: TextStyle(fontSize: 30, color: Colors.blueAccent),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),

      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("Assets/image/road.jpg"),
              Text(
                "stack help to place widget to another widget",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),

            child: Text("Go back ", style: TextStyle(color: Colors.white60)),
          ),
        ],
      ),
    );
  }
}
