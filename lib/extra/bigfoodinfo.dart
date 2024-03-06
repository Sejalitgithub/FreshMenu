import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigFood extends StatefulWidget {
  const BigFood({Key? key}) : super(key: key);

  @override
  State<BigFood> createState() => _BigFoodState();
}

class _BigFoodState extends State<BigFood> {
  int itemCount = 1; // State variable to track the item count
  bool _showScrollbar = false; // Variable to control the visibility of the scrollbar

  double price = 199; // Initial price of the product

  @override
  Widget build(BuildContext context) {
    double totalPrice = itemCount * price; // Calculate total price

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 15, right: 15),
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollStartNotification ||
                  notification is ScrollUpdateNotification) {
                // Show the scrollbar when scrolling starts or updates
                setState(() {
                  _showScrollbar = true;
                });
              } else if (notification is ScrollEndNotification) {
                // Hide the scrollbar when scrolling ends
                setState(() {
                  _showScrollbar = false;
                });
              }
              return true;
            },
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(
                      'assets/images/redvalvet.jpg',
                      height: 300,
                      width: 450,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Redvalvet Cake",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            buildAddToCartButton(),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\₹199',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "\₹250",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            '10 % offer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSquareBox('23', 'Fat(g)'),
                          _buildSquareBox('50', 'Fiber(g)'),
                          _buildSquareBox('1', 'Carbs(g)'),
                          _buildSquareBox('20', 'Protein(g)'),
                          _buildSquareBox('2', 'Energy(g)'),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Savor the rich, velvety delight of our Red Velvet Cake, crafted with layers of cocoa-infused goodness and creamy, indulgent frosting. A decadent treat that promises to elevate your dessert experience to new heights.",
                        style: TextStyle(color: Colors.white60, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: !_showScrollbar
          ? null
          : FloatingActionButton(
        // Hide FloatingActionButton when scrollbar is not shown
        onPressed: () {
          // Scroll to the top when FloatingActionButton is pressed
          Scrollable.ensureVisible(context, duration: Duration(milliseconds: 500));
        },
        child: Icon(Icons.arrow_upward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: buildViewCartButton(totalPrice),
    );
  }

  Widget buildViewCartButton(double totalPrice) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          // Action to perform when the "Make Payment" button is pressed
          // You can navigate to the payment screen or perform any other action here
          print('Total Price: $totalPrice');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
          ),
          padding: EdgeInsets.symmetric(vertical: 16), // Adjust the padding as needed
          primary: Colors.orange[800], // Shaded orange color
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Make Payment - ₹${totalPrice.toStringAsFixed(2)}", // Display total price with text
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareBox(String text1, String text2) {
    return Container(
      width: 80,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 5), // Adjust spacing between texts if needed
          Text(
            text2,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  //add to cart button functionality
  Widget buildAddToCartButton() {
    return itemCount > 0
        ? Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.deepOrange],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
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
          SizedBox(width: 8),
          Text(
            '$itemCount',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(width: 8),
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
    )
        : buildAddToCartButtonWidget();
  }

  Widget buildAddToCartButtonWidget() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          itemCount = 1;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.zero,
        primary: Colors.transparent,
        elevation: 0,
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.deepOrange],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          constraints: BoxConstraints(minHeight: 40, minWidth: 155),
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Add to Cart',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
