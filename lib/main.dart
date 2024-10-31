import 'package:flutter/material.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar()
    );
  }
}
