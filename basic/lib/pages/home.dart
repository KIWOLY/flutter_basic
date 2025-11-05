import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('container', style: TextStyle(fontSize: 30)),
        centerTitle:true,
      ),
      body: Container(
        height: 300,
        width: 300,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: const Text(
          'Hello, World!',
          style: TextStyle(fontSize: 25, color: Colors.white70),
        ),
      ),
    );
  }
}
