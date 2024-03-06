import 'package:flutter/material.dart';
import 'package:food/screen/category.dart';
import 'package:food/widgets/item_widgets.dart';
import 'package:food/widgets/item_widgets2.dart';
import 'package:food/widgets/item_widget2.dart';
import 'package:food/widgets/item_widgets3.dart';
import 'package:food/widgets/item_widgets4.dart';
import 'package:food/widgets/item_widgets5.dart';
import 'package:food/widgets/item_widgets6.dart';
import 'package:food/widgets/item_widgets7.dart';

class FoodInfo extends StatefulWidget {
  @override
  _FoodInfoState createState() => _FoodInfoState();
}

class _FoodInfoState extends State<FoodInfo> {
  int _currentIndex = 0;

  // Define the list of headings for the containers
  List<String> containerHeadings = [
    "Beverages and Cakes",
    "Breakfast",
    "Lunch",
    "Noddles",
    "Sandwitch",
    "Soup and Salad",
  ];

  // List of routes corresponding to each tab
  List<Widget> _tabRoutes = [
    // Add your routes here for each tab
    ItemWidget2(), // For example
    // Dummy route for demonstration, replace with your desired routes
    ItemWidgets3(),
    ItemWidgets4(),
    ItemWidgets5(),
    ItemWidgets6(),
    ItemWidgets7(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.white, // Change the color of the drawer icon here
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Menu is for ....',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 25),
                    border: InputBorder.none,
                  ),
                  cursorColor: Colors.white,
                  // Add any search functionality here
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              ListTile(
                title: const Text("list1"),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              ListTile(
                title: const Text("list2"),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              ListTile(
                title: const Text("list3"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(height: 50),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Image(
                              image: AssetImage('assets/images/upper1.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Image(
                              image: AssetImage('assets/images/valentine.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 10),
                          // Add more images here
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Image(
                              image: AssetImage('assets/images/dinner.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                          ),
                          // Add more images as needed
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "TODAY ' S  MENU",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Chef-Crafted Daily Specials",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TabBar(
                      isScrollable: true,
                      indicator: BoxDecoration(),
                      labelStyle: TextStyle(fontSize: 20,color: Colors.orange),
                      labelPadding: EdgeInsets.symmetric(horizontal: 20),
                      tabs: [
                        for (var heading in containerHeadings)
                          Tab(text: heading),
                      ],
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                        // Navigate to corresponding page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => _tabRoutes[index]),
                        );
                      },
                    ),
                  ),
                  Flexible(
                    flex:1,
                    child:TabBarView(
                      children: [
                        for (var i = 0; i < containerHeadings.length; i++)
                          _currentIndex == i
                              ? Container(
                            color: Colors.black,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    containerHeadings[i],
                                    style: TextStyle(color: Colors.white, fontSize: 24),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: ItemWidgets(),
                                  ),
                                ),
                              ],
                            ),
                          )
                              : Container(),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (CateGory())),
                    );
                  },
                  child: Icon(Icons.search, color: Colors.orange),
                  backgroundColor: Colors.grey[900], // Change the color as needed
                  shape: CircleBorder(), // Make the button circular
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
