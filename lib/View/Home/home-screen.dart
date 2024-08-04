import 'package:flutter/material.dart';
import 'package:task2_deltana/View/Home/accountScreen/accountScreen.dart';
import 'package:task2_deltana/View/Home/cartScreen/cart-screen.dart';
import 'package:task2_deltana/View/Home/categories-screen/categoriesScreen.dart';
import 'package:task2_deltana/View/Home/favoriteScreen/favorite-screen.dart';
import 'package:task2_deltana/View/Home/homeBody.dart';
import 'home_widgets/bottomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> screens = [
    const HomeBody(),
    const CategoriesScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavBar(currentIndex: _selectedIndex, onItemTapped: _onItemTapped,),
      ),
    );
  }
}