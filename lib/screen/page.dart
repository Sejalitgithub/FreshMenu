import 'package:flutter/material.dart';

class PageUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

          title: Text('Sign Up', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 30)),
          centerTitle: true,
          leading:IconButton(
            icon: Icon(Icons.arrow_back, size: 30.0, color: Colors.white,), onPressed: () {Navigator.pop(context);},
          ),
        ),
        backgroundColor: Colors.black,
        body:Padding(
          padding:EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: TextStyle(color: Colors.white,fontSize: 30),
              keyboardType: TextInputType.emailAddress,
               autofocus: true,
               decoration: InputDecoration(
                hintText: "Email",
                     hintStyle: TextStyle(color: Colors.grey[800],fontSize:30,fontWeight: FontWeight.w400),
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.white), // Color when the field is focused
                 ),
               ),
              toolbarOptions: ToolbarOptions(copy: true,cut:true,paste: true,selectAll: true),
            ),


        )

      ),
    );
  }
}

// Widget buildTextFormalField()=>
