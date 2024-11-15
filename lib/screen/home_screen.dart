import 'package:flutter/material.dart';
import 'package:shoppy/screen/cart_screen.dart';
import 'package:shoppy/screen/favorites_screen.dart';
import 'package:shoppy/screen/profile_screen.dart';

import 'notification_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Initialize the selected index to 0 (first tab)

  // Define the function to handle tab taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to Home
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => FavoritesScreen()), // Navigate to Favorites
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CartScreen()), // Navigate to Cart
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()), // Navigate to Profile
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EBEA),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FavoritesScreen()),
                      );
                    },
                    child: Badge(
                      label: Text('1'),
                      child: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/shopping.png'),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotificationScreen()),
                      );
                    },
                    child: Badge(
                      label: Text('1'),
                      child: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/message.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image(
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/cloth.png'),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation or functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Rounded border
                      ),
                      padding: EdgeInsets.all(15),

                    ),
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Container(
                padding: EdgeInsets.all(10), // Padding for the container
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      // Add space between items
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // Rounded corners
                          border: Border.all(color: Colors.grey),
                          // Border color
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              // Shadow color
                              spreadRadius: 1,
                              // Spread radius
                              blurRadius: 5,
                              // Blur radius
                              offset: Offset(0, 3), // Shadow offset
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                        // Padding inside the container
                        child: Text(
                          'Fashion',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Sports',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          color: Colors.blueAccent,
                          // Special background for 3rd item
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Electronics',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // White text for 3rd item
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Beauty',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Perfumes',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Shoes',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Row for "Best Sell Product" and "See More"
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Sell Product',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add functionality for "See More" if needed
                    },
                    child: Text(
                      'See More',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container with Image and Text for Best Sell Products
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 7, right: 7),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable vertical scrolling
                child: Row(
                  children: [
                    // Each item container here
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // Border radius of 20
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              // Shadow color with opacity
                              offset: Offset(0, 4),
                              // Shadow position (x, y)
                              blurRadius: 8,
                              // Spread the shadow
                              spreadRadius: 2, // Extend the shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Image Section - Taking half of the height
                            Container(
                              height: 140, // Half of the height (280/2)
                              width: double.infinity, // Take the full width
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    // Shadow for the image container
                                    offset: Offset(0, 2),
                                    // Slightly lower shadow for the image
                                    blurRadius: 6,
                                    // Subtle blur
                                    spreadRadius: 1, // Minor spread
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/shirt1.png'), // Replace with your image
                                ),
                              ),
                            ),

                            // Text Details Section - Other half of the height
                            Container(
                              height: 140, // Other half of the height
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Essential Mens Short-\nSleeve Crewneck T-Shirt',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange),
                                      Text(
                                        '4.9 | 3452',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '₹345',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // Border radius of 20
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              // Shadow color with opacity
                              offset: Offset(0, 4),
                              // Shadow position (x, y)
                              blurRadius: 8,
                              // Spread the shadow
                              spreadRadius: 2, // Extend the shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Image Section - Taking half of the height
                            Container(
                              height: 140, // Half of the height (280/2)
                              width: double.infinity, // Take the full width
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    // Shadow for the image container
                                    offset: Offset(0, 2),
                                    // Slightly lower shadow for the image
                                    blurRadius: 6,
                                    // Subtle blur
                                    spreadRadius: 1, // Minor spread
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/shirt2.png'), // Replace with your image
                                ),
                              ),
                            ),

                            // Text Details Section - Other half of the height
                            Container(
                              height: 140, // Other half of the height
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Essential Mens Short-\nSleeve Crewneck T-Shirt',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange),
                                      Text(
                                        '4.9 | 3452',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '₹345',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // Border radius of 20
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              // Shadow color with opacity
                              offset: Offset(0, 4),
                              // Shadow position (x, y)
                              blurRadius: 8,
                              // Spread the shadow
                              spreadRadius: 2, // Extend the shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Image Section - Taking half of the height
                            Container(
                              height: 140, // Half of the height (280/2)
                              width: double.infinity, // Take the full width
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    // Shadow for the image container
                                    offset: Offset(0, 2),
                                    // Slightly lower shadow for the image
                                    blurRadius: 6,
                                    // Subtle blur
                                    spreadRadius: 1, // Minor spread
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/shirt3.png'), // Replace with your image
                                ),
                              ),
                            ),

                            // Text Details Section - Other half of the height
                            Container(
                              height: 140, // Other half of the height
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Essential Mens Short-\nSleeve Crewneck T-Shirt',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange),
                                      Text(
                                        '4.9 | 3452',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '₹345',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // Border radius of 20
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              // Shadow color with opacity
                              offset: Offset(0, 4),
                              // Shadow position (x, y)
                              blurRadius: 8,
                              // Spread the shadow
                              spreadRadius: 2, // Extend the shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Image Section - Taking half of the height
                            Container(
                              height: 140, // Half of the height (280/2)
                              width: double.infinity, // Take the full width
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    // Shadow for the image container
                                    offset: Offset(0, 2),
                                    // Slightly lower shadow for the image
                                    blurRadius: 6,
                                    // Subtle blur
                                    spreadRadius: 1, // Minor spread
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/shirt4.png'), // Replace with your image
                                ),
                              ),
                            ),

                            // Text Details Section - Other half of the height
                            Container(
                              height: 140, // Other half of the height
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Essential Mens Short-\nSleeve Crewneck T-Shirt',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange),
                                      Text(
                                        '4.9 | 3452',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '₹345',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    // Repeat the above Padding/Container structure for each item...
                  ],
                ),
              ),
            )

            // Repeat the above Container for additional products if needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );

  }
  }