import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: const Text('Hello, World!',style: TextStyle(fontSize: 35, color: Colors.white70)))
      ),
    );
  }
}
