import 'package:basic/pages/stack.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image page",
          style: TextStyle(color: Colors.blueAccent, fontSize: 30),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Image.asset("Assets/image/road.jpg"),
          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> StackPage()));
            },
            style:ElevatedButton.styleFrom(
            backgroundColor:Colors.blueAccent,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15)
            ) ,
            child: Text("Go to stack page ", style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),),
          ),
        ],
      ),
    );
  }
}
