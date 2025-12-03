import 'package:flutter/material.dart';
import 'package:real/data/notifiers.dart';
import 'package:real/pages/home_page.dart';
import 'package:real/pages/profile.dart';

List<Widget> pages = [Profile(), Home()];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            ],
            onDestinationSelected: (value) => {
              selectedPageNotifier.value = value,
            },
            selectedIndex: selectedPage,
          );
        },
      ),
    );
  }
}
