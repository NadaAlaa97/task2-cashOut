import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({super.key});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Column(
          children: [
            TabBar(
              dividerColor: Colors.transparent,
              indicator: const BoxDecoration(color: Colors.transparent,),
              labelPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              tabs: [
                tabItem('الشعر', 0),
                tabItem('ميك أب', 1),
                tabItem('البرفيوم', 2),
                tabItem('العنايه الشخصيه', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tabItem(String title, int index) {
    final bool isSelected = _currentIndex == index;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Tab(
        child: IntrinsicWidth(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: MyTheme.greyColor),
              color: isSelected ? MyTheme.yellowColor : Colors.transparent,
            ),
            child: Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.spMin, fontFamily: 'IBM Plex Sans Arabic', fontWeight: FontWeight.bold,
                color: isSelected ? MyTheme.blackColor : MyTheme.greyColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
