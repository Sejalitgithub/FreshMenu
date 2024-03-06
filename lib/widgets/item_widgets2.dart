import 'package:flutter/material.dart';

import 'package:food/screen/category.dart';

// Define a class to represent each food item
class FoodItem {
  final String imagePath;
  final String foodName;
  final String description;
  final String price;
  final String category;
  final bool isVeg; // New property to indicate if the item is vegetarian
  final Color dotColor; // New property to hold the color of the dot
  final String offer; // New property to hold the offer information
  final String additionalText; // New property to hold additional text below the price

  FoodItem({
    required this.imagePath,
    required this.foodName,
    required this.description,
    required this.price,
    required this.category,
    required this.isVeg,
    required this.dotColor, // Initialize dotColor
    required this.offer, // Initialize offer
    required this.additionalText, // Initialize additionalText
  });
}

class ItemWidgets2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 6,
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('Food Items'),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                labelStyle: TextStyle(fontSize: 20),
                tabs: [
                  Tab(text: 'Beverages and Cakes'),
                  Tab(text: 'Breakfast'),
                  Tab(text: 'Lunch'),
                  Tab(text: 'Noddles'),
                  Tab(text: 'Sandwitch'),
                  Tab(text: 'Soup and Salad'),
                ],
              ),
            ),
            body: Stack(
              children: [
                TabBarView(
                  children: [
                    _buildTabView('Beverages and Cakes'),
                    _buildTabView('Breakfast'),
                    _buildTabView('Lunch'),
                    _buildTabView('Noddles'),
                    _buildTabView('Sandwitch'),
                    _buildTabView('Soup and Salad'),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => (CateGory())),
                        );
                      },
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabView(String category) {
    final List<FoodItem> foodItems = [
      FoodItem(
        imagePath: 'assets/images/redvalvet.jpg',
        foodName: 'RedVelvet Cake',
        description: 'Special cake',
        price: '\₹199',
        category: 'Beverages and Cakes',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/redvalvetpastry.jpg',
        foodName: 'RedVelvet Cake',
        description: 'Special cake',
        price: '\₹199',
        category: 'Beverages and Cakes',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/mintchass.jpg',
        foodName: 'RedVelvet Cake',
        description: 'Special cake',
        price: '\₹199',
        category: 'Beverages and Cakes',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/watermelonjuice.jpg',
        foodName: 'RedVelvet Cake',
        description: 'Special cake',
        price: '\₹199',
        category: 'Beverages and Cakes',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/freshfruit.jpg',
        foodName: 'Fruit Salad',
        description: 'Diet Special',
        price: '\₹99',
        category: 'Breakfast',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹139', // Example additional text
      ),

      FoodItem(
        imagePath: 'assets/images/idli.jpg',
        foodName: 'Idli',
        description: 'Tasty',
        price: '\₹159',
        category: 'Breakfast',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/sadadosa.jpg',
        foodName: 'Dosa',
        description: 'healthy',
        price: '\₹149',
        category: 'Breakfast',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹179', // Example additional text
      ),



      FoodItem(
        imagePath: 'assets/images/forth.jpg',
        foodName: 'Dal Rice',
        description: 'Special veg Thali',
        price: '\₹199',
        category: 'Lunch',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹250', // Example additional text
      ),

      FoodItem(
        imagePath: 'assets/images/dietlunch.jpg',
        foodName: 'Lunch Special',
        description: '',
        price: '\₹249',
        category: 'Lunch',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹300', // Example additional text
      ),

      FoodItem(
        imagePath: 'assets/images/hakkanoddles.jpg',
        foodName: 'Hakka Noddles',
        description: '',
        price: '\₹149',
        category: 'Noddles',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/coldchillihakkanoddles.jpg',
        foodName: 'Cold Hakka Noddles',
        description: '',
        price: '\₹199',
        category: 'Noddles',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹249', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/chessycornsandwitch.jpg',
        foodName: 'Cheesy Corn Sandwitch',
        description: '',
        price: '\₹99',
        category: 'Sandwitch',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹149', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/classicgarlicbreadjpg.jpg',
        foodName: 'Classic Garlic Bread',
        description: '',
        price: '\₹199',
        category: 'Sandwitch',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹199', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/cornsoup.jpg',
        foodName: 'Corn Soup',
        description: '',
        price: '\₹99',
        category: 'Soup and Salad',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹149', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/freshfruit.jpg',
        foodName: 'Fresh Fruit Salad',
        description: '',
        price: '\₹49',
        category: 'Soup and Salad',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹79', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/fruitsalad.jpg',
        foodName: 'Fruit Salad',
        description: '',
        price: '\₹49',
        category: 'Soup and Salad',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹79', // Example additional text
      ),
      FoodItem(
        imagePath: 'assets/images/tomatosoup.jpg',
        foodName: 'Tomato Soup',
        description: '',
        price: '\₹99',
        category: 'Soup and Salad',
        isVeg: true,
        dotColor: Colors.green,
        offer: '10% off', // Example offer
        additionalText: '\₹149', // Example additional text
      ),


      // Add more food items here
    ];

    List<FoodItem> filteredItems =
    foodItems.where((item) => item.category == category).toList();
    return ListView.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: filteredItems[index].dotColor, width: 2),
                        borderRadius: BorderRadius.circular(1),
                      ),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: filteredItems[index].dotColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      filteredItems[index].isVeg ? 'Veg' : 'Non-Veg',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "singleItemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    filteredItems[index].imagePath,
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 8),
                child: Text(
                  filteredItems[index].foodName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 8),
                child: Text(
                  filteredItems[index].description,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          filteredItems[index].price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: 5), // Adding some space between the price and the additional text
                        Text(
                          filteredItems[index].additionalText, // Additional text
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
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFA500), // Light Orange
                                Color(0xFFFF4500), // Dark Orange
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add to Cart functionality
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              elevation: MaterialStateProperty.all<double>(
                                  0), // No shadow
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5), // Adding some space between the button and the text
                        Text(
                          filteredItems[index].offer, // Offer text
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
