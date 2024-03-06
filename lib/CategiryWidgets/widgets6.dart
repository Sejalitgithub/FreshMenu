import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Widgets6(),
  ));
}

class CartPage extends StatefulWidget {
  final List<FoodItem1> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30.0, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,

        title: Text('Cart', style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.cartItems[index].foodName,style: TextStyle(color: Colors.white),),
            subtitle: Text(widget.cartItems[index].price),
            leading: Image.asset(
              widget.cartItems[index].imagePath,
              width: 50,
              height: 50,
            ),
          );
        },
      ),
    );
  }
}

class Widgets6 extends StatefulWidget {
  @override
  _Widgets6State createState() => _Widgets6State();
}

class _Widgets6State extends State<Widgets6> {
  List<FoodItem1> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30.0, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          style: TextStyle(color: Colors.white, fontSize: 25),
          decoration: InputDecoration(
            hintText: 'Search for dishes ...... ',
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
              '',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(),
                child: Text(
                  "Search Results",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              FoodItem1(
                imagePath: 'assets/images/peanutnoddles.jpg',
                foodName: 'Peanut',
                price: '\₹199',
                category: 'World Cuisine',
                isVeg: true,
                dotColor: Colors.green,
                offer: '10% off', // Example offer
                additionalText: '\₹249', // Example additional text
              ),
              SizedBox(height: 20),
              FoodItem1(
                imagePath: 'assets/images/matarpaneer.jpg',
                foodName: 'Matar Paneer',
                price: '\₹199',
                category: 'World Cuisine',
                isVeg: true,
                dotColor: Colors.green,
                offer: '10% off', // Example offer
                additionalText: '\₹249', // Example additional text
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.orange[900],
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              selectedItems.add(
                FoodItem1(
                  imagePath: 'assets/images/peanutnoddles.jpg',
                  foodName: 'Peanut',
                  price: '\₹199',
                  category: 'World Cuisine',
                  isVeg: true,
                  dotColor: Colors.green,
                  offer: '10% off',
                  additionalText: '\₹249',
                ),
              );
            });
            // Navigate to the cart page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(cartItems: selectedItems),
              ),
            );
          },
          child: Text(
            'Add to Cart',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class FoodItem1 extends StatefulWidget {
  final String imagePath;
  final String foodName;
  final String price;
  final String category;
  final bool isVeg;
  final Color dotColor;
  final String offer;
  final String additionalText;

  FoodItem1({
    required this.imagePath,
    required this.foodName,
    required this.price,
    required this.category,
    required this.isVeg,
    required this.dotColor,
    required this.offer,
    required this.additionalText,
  });

  @override
  _FoodItem1State createState() => _FoodItem1State();
}

class _FoodItem1State extends State<FoodItem1> {
  int _quantity = 0;
  bool _addedToCart = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        width: double.infinity,
        height: 180, // Increased height to accommodate additional text and button
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            )
          ],
        ),
        child: Card(
          color: Colors.grey[900],
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: widget.dotColor, width: 2),
                        borderRadius: BorderRadius.circular(1),
                      ),
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: widget.dotColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.isVeg ? 'Veg' : 'Non-Veg',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _quantity++; // Increment the quantity
                          _addedToCart = true; // Set to true when item is added to cart
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 5), // Shifted image towards the left
                        child: Image.asset(
                          widget.imagePath,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Text(
                          widget.foodName,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.price,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.orange,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              widget.additionalText,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.grey,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    _addedToCart
                        ? Container(

                      height: 35, // Specifying height for consistency
                      width: 120, // Specifying width for consistency
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [Colors.orange, Colors.deepOrange],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (_quantity > 0) _quantity--; // Decrement the quantity
                              });
                            },
                            color: Colors.white, // Change icon color here
                          ),
                          Text(
                            _quantity.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white, // Change text color here
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _quantity++; // Increment the quantity
                              });
                            },
                            color: Colors.white, // Change icon color here
                          ),
                        ],
                      ),
                    )
                        : Container(
                      height: 35, // Specifying height for consistency
                      width: 120, // Specifying width for consistency
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [Colors.orange, Colors.deepOrange],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _quantity++; // Increment the quantity
                            _addedToCart = true; // Set to true when item is added to cart
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, // Set transparent background color
                          onPrimary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white, // Change text color here
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
