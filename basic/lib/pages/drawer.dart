import 'package:basic/pages/real.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Drawer",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [Text("Hellow"), Icon(Icons.home_rounded)],
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 53, 58, 61),

          child: Column(
            children: [
              ListTile(leading: Icon(Icons.logout), title: Text("LOGOUT")),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            Text("in the Drawer use the following "),
            SizedBox(height: 10),
            Text(
              "listtile , column to create the children in which you will use the Drawer Header",
            ),
            SizedBox(height: 10),
            Text("if you not using drawe header you can use the SafeArea"),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text("Go back", style: TextStyle(color: Colors.black)),
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RealApp()),
                );
              },
              child: Text("Go to realapp"),
            ),
          ],
        ),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
          onDestinationSelected: (int value) {
            print(value);
          },
        ),
      ),
    );
  }
}
