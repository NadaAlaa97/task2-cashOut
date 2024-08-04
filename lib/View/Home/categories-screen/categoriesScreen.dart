import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/Home/categories-screen/beauty-and-health-screen.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'الفئات',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'IBM Plex Sans Arabic', color: MyTheme.blackColor, fontSize: 20.spMin,),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.spMin,
          mainAxisSpacing: 5.spMin,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.spMin),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BeautyAndHealthScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.spMin),
                  color: Colors.white,
                  border: Border.all(color: MyTheme.greyColor.withOpacity(0.5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text('بيت الأجهزة',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.spMin,),
                      ),
                    ),
                    SizedBox(height: 8.spMin),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.spMin),
                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIgY2rghHonmywvVxG-9CslKyn-DULrBIGIA&s',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
