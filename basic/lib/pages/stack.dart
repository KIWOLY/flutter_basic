import 'package:basic/pages/listtile.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack",
          style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 255, 171, 68)),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: true,
        actions: [
          Icon(Icons.menu, color: Colors.redAccent,)
        ],
        backgroundColor: const Color.fromARGB(255, 92, 167, 228),
      ),

      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("Assets/image/road.jpg",
              height: 400,
              fit:BoxFit.cover ,),
              SizedBox(height: 500,
                child: Center(
                  child: Text(
                    "stack help to place widget to another widget",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      

                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTilePage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),

            child: Text("Go to ListTile ", style: TextStyle(color: Colors.white60)),
          ),
          
        ],
      ),
    );
  }
}
