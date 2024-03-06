import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Text('Sign Up', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 30)),
        centerTitle: true,

      ),
        body: Padding(
            padding:EdgeInsets.symmetric(horizontal: 30),
        child:Container(
          child: Column(
            children: [
              buildTextField1(),
              buildTextField2(),
              buildTextField3(),
              buildTextField4(),
            ],
          ),

        )

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
