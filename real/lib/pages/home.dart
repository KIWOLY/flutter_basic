import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor:Colors.blue,
      ),
    );
  }
}