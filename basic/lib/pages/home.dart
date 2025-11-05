import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('container', style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 200,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 25, color: Colors.white70),
            ),
          ),
          SizedBox(height: 30),

          ElevatedButton(
            onPressed: (){},
             child: Text('Go to column page')),
        ],
      ),
    );
  }
}
