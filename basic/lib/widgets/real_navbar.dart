import 'package:flutter/material.dart';

class RealNavbar extends StatefulWidget {
  const RealNavbar({super.key});

  @override
  State<RealNavbar> createState() => _RealNavbarState();
}

class _RealNavbarState extends State<RealNavbar> {
    int index = 1;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            index = value;
          });
        },
        selectedIndex: index,
      );
  }
}