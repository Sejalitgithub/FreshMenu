import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Add your logic here
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.deepOrange],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8), // Adjust padding
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    if (itemCount > 0) {
                      setState(() {
                        itemCount--;
                      });
                    }
                  },
                  child: Icon(Icons.remove, size: 25, color: Colors.white),
                ),
                SizedBox(width: 8), // Adjust spacing
                Text(
                  '$itemCount',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(width: 8), // Adjust spacing
                GestureDetector(
                  onTap: () {
                    setState(() {
                      itemCount++;
                    });
                  },
                  child: Icon(Icons.add, size: 25, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
