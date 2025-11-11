import 'package:flutter/material.dart';
import 'package:basic/pages/row%20.dart'; 

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
      
        children: [
          Container(
            height: 300,
            width: 200,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(60),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Hello, World!',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {
            
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RowPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Go to Row Page',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
