import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Sign Up', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 30)),
        centerTitle: true,

      ),
      body: Column(
        children: [
          buildTextField1(),
          buildTextField2(),
          buildTextField3(),
          buildTextField4(),


          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                },
                child: Container(
                  height: 50,
                  color: Colors.orange[900],
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget buildTextField1()=>TextField(
    style: TextStyle(color: Colors.white,fontSize: 30),
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: "Email",
      hintStyle: TextStyle(color: Colors.grey[800],fontSize:30,fontWeight: FontWeight.w400),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white), // Color when the field is focused
      ),
    )
);

Widget buildTextField2()=>TextField(
    style: TextStyle(color: Colors.white,fontSize: 30),
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      hintText: "Name",
      hintStyle: TextStyle(color: Colors.grey[800],fontSize:30,fontWeight: FontWeight.w400),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white), // Color when the field is focused
      ),
    )
);
Widget buildTextField3()=>TextField(
    style: TextStyle(color: Colors.white,fontSize: 30),
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
      hintText: "10 Digit Mobile Number",
      hintStyle: TextStyle(color: Colors.grey[800],fontSize:30,fontWeight: FontWeight.w400),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white), // Color when the field is focused
      ),
    )
);

Widget buildTextField4()=>TextField(
    style: TextStyle(color: Colors.white,fontSize: 30),
    keyboardType: TextInputType.text,
    obscureText:true,
    decoration: InputDecoration(
      hintText: "Password",
      hintStyle: TextStyle(color: Colors.grey[800],fontSize:30,fontWeight: FontWeight.w400),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white), // Color when the field is focused
      ),
    )
);