import 'package:flutter/material.dart';
import 'package:food/CategiryWidgets/widgets1.dart';
import 'package:food/CategiryWidgets/widgets2.dart';
import 'package:food/CategiryWidgets/widgets3.dart';
import 'package:food/CategiryWidgets/widgets4.dart';
import 'package:food/CategiryWidgets/widgets5.dart';
import 'package:food/CategiryWidgets/widgets6.dart';



import 'package:food/widgets/item_widgets2.dart';
import 'package:food/widgets/item_widgets7.dart';

class CateGory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, size: 30.0, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        title: TextField(
          style: TextStyle(color: Colors.white, fontSize: 25),
          decoration: InputDecoration(
            hintText: 'Search for dishes',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Implement your search functionality here
            print('Search query: $value');
          },
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Top Categories',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              crossAxisSpacing: 25,
              childAspectRatio: 3 / 2, // Adjust the aspect ratio for rectangles
            ),
            children: [
              // Rectangular grid items with images and text
              buildGridItem(context, 'World cuisine ', 'assets/images/first.jpg', Widgets1()),
              buildGridItem(context, 'continental', 'assets/images/second.jpg', Widgets2()),
              buildGridItem(context, 'fusion', 'assets/images/fusion.jpg', Widgets3()),
              buildGridItem(context, 'indian', 'assets/images/forth.jpg', Widgets4()),
              buildGridItem(context, 'mexican', 'assets/images/mexian.jpg', Widgets5()),
              buildGridItem(context, 'japanese', 'assets/images/japaneese.jpg', Widgets6()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(BuildContext context, String text, String imageUrl, Widget page) {
    return GestureDetector(
      onTap: () {
        // Navigate to the other page when the button is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
