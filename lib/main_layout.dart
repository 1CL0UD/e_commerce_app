import 'package:flutter/material.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/explore_page.dart';
import 'package:e_commerce_app/pages/favourite_page.dart';
import 'package:e_commerce_app/pages/profile_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedPage = 0;

  final List _pages = [
    ShopPage(),
    const ExplorePage(),
    const CartPage(),
    const FavouritePage(),
    const ProfilePage()
  ];

  void _navigateBottomBar(int index) {
    setState(
      () {
        _selectedPage = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Groceries'),
        elevation: 0,
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 24,
          fixedColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedPage,
          onTap: _navigateBottomBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
