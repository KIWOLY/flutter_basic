import 'package:basic/data/notifiers.dart';
import 'package:basic/pages/home_page.dart';
import 'package:basic/pages/profile.dart';
import 'package:basic/widgets/real_navbar.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  HomePage(),
  Profile(),
];

class RealApp extends StatefulWidget {
  const RealApp({super.key});

  @override
  State<RealApp> createState() => _RealAppState();
}

class _RealAppState extends State<RealApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp", style: TextStyle(fontSize: 28)),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, dynamic selectedPage, Widget? child) {
          return  pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: RealNavbar(),
    );
  }
}
