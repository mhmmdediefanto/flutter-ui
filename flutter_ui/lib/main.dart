import 'package:flutter/material.dart';
import 'package:flutter_ui/categories_product.dart';
import 'package:flutter_ui/recomended_product.dart';
import 'package:flutter_ui/product_page.dart'; // Pastikan untuk mengimpor file product_page.dart

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 450,
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 5),
              decoration: BoxDecoration(
                // color: Colors.green[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Discover The Most Modern Furniture',
                style: TextStyle(fontSize: 25, letterSpacing: 2),
              ),
            ),
            RoomCategorySelector(),
            Container(
              width: 400,
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              // color: Colors.grey[350],
              child: const Text(
                'Recommended Furniture :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
             RecommendedFurniture(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Detail Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ProductPage()),
            );
          }
        },
      ),
    );
  }
}
