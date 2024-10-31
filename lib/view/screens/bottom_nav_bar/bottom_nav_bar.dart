

import 'package:flutter/material.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/account/account_screen.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/cart/cart_screen.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/home_screen.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/messages/messages_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  onBottomIconTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
List<Widget> Widgets = [
  HomeScreen(),
  MessagesScreen(),
  CartScreen(),
  AccountScreen()
];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          onBottomIconTap(value);
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "messages",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
            ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      ),
      body: Widgets.elementAt(selectedIndex),
    );
  }
}
