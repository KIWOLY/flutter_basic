import 'package:flutter/material.dart';

class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Navigation Bar",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: Column(
        children: [
          Text(
            "its all about the Navigation bar in  which the argument used is bottomNavigationBar   and the widget is NavigationBar",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Kiwoly");
        },
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
        onDestinationSelected: (int value) {
          print(value);
        },
      ),
    );
  }
}
