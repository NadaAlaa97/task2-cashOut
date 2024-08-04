import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/Home/categories-screen/category_widgets/category-tabs.dart';
import 'package:task2_deltana/View/Home/home_widgets/horizontal_list.dart';
import 'package:task2_deltana/View/Home/home_widgets/row_section.dart';
import 'package:task2_deltana/View/Home/home_widgets/searchTextField.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class BeautyAndHealthScreen extends StatelessWidget {
  const BeautyAndHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 25,),
              Text('الصحه و الجمال',
                style: TextStyle(color: MyTheme.blackColor,fontSize: 20.spMin,
                    fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.bold),),
              const SizedBox(width: 6,),
              InkWell(
                  onTap: (){
                    showModalBottomSheet(context: context,isScrollControlled: true, builder: (BuildContext context){
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 29,top: 5),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Icon(Icons.close,size: 20.spMin,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,left: 110),
                                  child: Center(child: Text('الفئات',style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 24.spMin,fontWeight: FontWeight.w500,color: MyTheme.blackColor),)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: GridView.builder(
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
                                            child: Text(
                                              'بيت الأجهزة',
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
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    });
                  },
                  child: Icon(Icons.keyboard_arrow_down,size: 26.spMin,))
            ],
          ),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyTheme.white
              ),
              child: Center(child: InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back,color: MyTheme.blackColor,size: 25.spMin,)),),
            ),
          ) ,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(child: SearchTextField()),
              const CategoryTabs(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowSection(text: 'العنايه بالشعر', textTwo: 'عرض المزيد', onTap: () {},),
              ),
              const HorizontalProductsList(color: MyTheme.innerContainer),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowSection(text: 'أدوات التصفيف', textTwo: 'عرض المزيد', onTap: () {},),
              ),
              const HorizontalProductsList(color: MyTheme.innerContainer),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowSection(text: 'أدوات التصفيف', textTwo: 'عرض المزيد', onTap: () {  },),
              ),
              const HorizontalProductsList(color: MyTheme.innerContainer),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: MyTheme.yellowColor,
              borderRadius: BorderRadius.circular(16.spMin),
            ),
            height: 40.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'الترتيب',
                        style: TextStyle(
                          color: MyTheme.blackColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBM Plex Sans Arabic',
                          fontSize: 16.spMin,
                        ),
                      ),
                      SizedBox(width: 3.w),
                      const Icon(Icons.sort, color: MyTheme.blackColor),
                    ],
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: MyTheme.blackColor,
                    fontSize: 20.spMin,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        ' التصنيف',
                        style: TextStyle(
                          color: MyTheme.blackColor,
                          fontSize: 16.spMin,
                          fontFamily: 'IBM Plex Sans Arabic',
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Icon(Icons.filter_alt_outlined, color: MyTheme.blackColor, size: 20.spMin),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
