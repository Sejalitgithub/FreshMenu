import 'package:flutter/material.dart';
import 'package:food/extra/firstfoodinfo.dart';
import 'package:food/extra/bigfoodinfo.dart';

// Define a class to represent each food item
class FoodItem {
  final String imagePath;
  final String foodName;
  final String description;
  final String price;
  final String category;
  final Color dotColor; // New property to hold the color of the dot

  FoodItem({
    required this.imagePath,
    required this.foodName,
    required this.description,
    required this.price,
    required this.category,
    required this.dotColor, // Initialize dotColor
  });
}

// Function to navigate to different first food pages based on index
void navigateToFirstFood(BuildContext context, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => FirstFood()),
  );
}

// Function to navigate to different big food pages based on index
void navigateToBigFood(BuildContext context, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => BigFood()),
  );
}

// A custom widget to display food items
class ItemWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample food items
    final List<FoodItem> foodItems = [
      FoodItem(
        imagePath: 'assets/images/redvalvet.jpg',
        foodName: 'RedValvet Cake',
        description: 'Special cake',
        price: '\₹199',
        category: 'Continental',
        dotColor: Colors.green, // Specify dot color for this item
      ),
      FoodItem(
        imagePath: 'assets/images/redvalvetpastry.jpg',
        foodName: 'RedValvet Pastry',
        description: 'Cake',
        price: '\₹99',
        category: 'Continental',
        dotColor: Colors.green, // Specify dot color for this item
      ),
      FoodItem(
        imagePath: 'assets/images/mintchass.jpg',
        foodName: 'Mint Chass ',
        description: 'Juice',
        price: '\₹69',
        category: 'Continental',
        dotColor: Colors.green,
      ),
      FoodItem(
        imagePath: 'assets/images/mintlemonade.jpg',
        foodName: 'Lemon Burst',
        description: 'Lemon Juice',
        price: '\₹49',
        category: 'Continental',
        dotColor: Colors.green,
      ),
      FoodItem(
        imagePath: 'assets/images/watermelonjuice.jpg',
        foodName: 'Watermelon Juice',
        description: 'Fruit Juice',
        price: '\₹79',
        category: 'Continental',
        dotColor: Colors.green,
      ),
      // Add more food items here
    ];

    return ListView.builder(
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            navigateToFirstFood(context, index);
          },
          child: Container(
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
                          color: Colors.white, // Changed to white
                          border: Border.all(color: foodItems[index].dotColor, width: 2),
                          borderRadius: BorderRadius.circular(1),
                        ),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: foodItems[index].dotColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        foodItems[index].category,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    foodItems[index].imagePath,
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 8),
                  child: Text(
                    foodItems[index].foodName,
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
                    foodItems[index].description,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          foodItems[index].price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.orange,
                          ),
                        ),
                      ),
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
                            navigateToBigFood(context, index);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
