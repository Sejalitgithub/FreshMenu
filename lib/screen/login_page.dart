
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, size: 30.0, color: Colors.white,), onPressed: () {Navigator.pop(context);},
              ),
            ],
          ),
          title: Text('Welcome to Fres',style: TextStyle(color: Colors.white ,fontSize: 25),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15.0), // Add space between text and image
            Container(
              color: Colors.black, // Set your desired background color
              child: Image.asset(
                'assets/images/logo.png', // Replace with your image URL
                width: 200.0, // Set your desired width
                height: 200.0, // Set your desired height
                colorBlendMode: BlendMode.clear,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
