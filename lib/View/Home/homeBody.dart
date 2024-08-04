import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/Home/bestSellerScreen.dart';
import 'package:task2_deltana/View/Home/categories-screen/beauty-and-health-screen.dart';
import 'package:task2_deltana/View/Home/home_widgets/carousel_slider.dart';
import 'package:task2_deltana/View/Home/home_widgets/horizontal_list.dart';
import 'package:task2_deltana/View/Home/home_widgets/listview_products.dart';
import 'package:task2_deltana/View/Home/home_widgets/row_section.dart';
import 'package:task2_deltana/View/Home/home_widgets/searchTextField.dart';
import 'package:task2_deltana/View/Home/home_widgets/secondHorizontalList.dart';
import 'package:task2_deltana/utils/MyTheme.dart';
class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          forceMaterialTransparency: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(child: SearchTextField()),
              SizedBox(width: 16.spMin,),
              Icon(Icons.notifications_none,color:MyTheme.blackColor,size: 24.spMin,),
            ],
          ),
        ),
        body: ListView(
          children: [
            const CarouselSliderWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RowSection(text: 'فئات', textTwo: 'عرض المزيد', onTap: () {Navigator.push(context,
              MaterialPageRoute(builder: (context)=> const BeautyAndHealthScreen())); },),
            ),
            HorizontalListViewWidget(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: RowSection(text: 'الأكثر مبيعا', textTwo: 'عرض المزيد',icon: Icons.local_fire_department_rounded, onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const BestSellerScreen()));
              },),
            ),
            const HorizontalProductsList(color: MyTheme.innerContainer,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RowSection(text: 'عروض جديده', textTwo: 'عرض المزيد', onTap: () {  },),
            ),
            const SecondHorizontalProductsList(color: MyTheme.textContainer,text: 'جديد',),
            Padding(
              padding: const EdgeInsets.all(8),
              child: RowSection(text: 'اجدد المنتجات', textTwo: 'عرض المزيد', onTap: () {  },),
            ),
            const SecondHorizontalProductsList(text: 'خصم ١٥٪', color: MyTheme.redContainer),
            Padding(
              padding: const EdgeInsets.all(8),
              child: RowSection(text: 'المنتجات المستعمله', textTwo: 'عرض المزيد', onTap: () {  },),
            ),
            const HorizontalProductsList(color: MyTheme.innerContainer2),
          ],
        ),
      ),
    );
  }
}
