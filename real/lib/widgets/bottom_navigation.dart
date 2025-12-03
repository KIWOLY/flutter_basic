import 'package:flutter/material.dart';
import 'package:real/data/notifiers.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
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
    );
  }
}
