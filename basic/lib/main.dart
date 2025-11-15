import 'package:basic/data/notifiers.dart';
import 'package:basic/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarModeNotifier,
      builder: (BuildContext context, bool isDarkmode, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkmode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: const Homepage(),
        );
        ;
      },
    );
  }
}
