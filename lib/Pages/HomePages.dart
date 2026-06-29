import "package:dartui/Component/Bottom_Nav_bar.dart";
import "package:dartui/Pages/CartPage.dart";
import "package:dartui/Pages/ShopPage.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void TabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages =[
 ShopPage(),

 CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => TabChange(index),
      ),
      body:_pages[_selectedIndex]
    );
  }
}
