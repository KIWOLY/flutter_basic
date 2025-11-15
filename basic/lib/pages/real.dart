import 'package:flutter/material.dart';

class RealApp extends StatefulWidget {
  const RealApp({super.key});

  @override
  State<RealApp> createState() => _RealAppState();
}

class _RealAppState extends State<RealApp> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp", style: TextStyle(fontSize: 28)),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: index ==0 ? Center(child: Text("1"),):Center(child: Text("2"),),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        selectedIndex: index,
      ),
    );
  }
}
