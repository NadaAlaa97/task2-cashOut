import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({super.key, required this.currentIndex, required this.onItemTapped,});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BottomNavigationBar(
        selectedFontSize: 12.spMin,
        unselectedFontSize: 12.spMin,
        selectedLabelStyle: TextStyle(fontSize: 12.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w400),
        unselectedLabelStyle: TextStyle(fontSize: 12.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w400),
        iconSize: 24.spMin,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.other_houses_sharp,
            color: widget.currentIndex == 0 ? Colors.yellow : Colors.grey,
            ),
            label: 'الرئيسيه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined,
              color: widget.currentIndex == 1 ? Colors.yellow : Colors.grey,
            ),
            label: 'الفئات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded,
              color: widget.currentIndex == 2 ? Colors.yellow : Colors.grey,
            ),
            label: 'العربة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,
              color: widget.currentIndex == 3 ? Colors.yellow : Colors.grey,
            ),
            label: 'المفضله',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,
              color: widget.currentIndex == 4 ? Colors.yellow : Colors.grey,
            ),
            label: 'الحساب',
          ),
        ],
        currentIndex: widget.currentIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        onTap: widget.onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
