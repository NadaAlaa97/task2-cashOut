import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/View/Home/home_widgets/filterModalBottomSheet.dart';
import 'package:task2_deltana/View/Home/home_widgets/modalBottomSheetSort.dart';
import '../../ViewModel/filterViewModel.dart';
import '../../ViewModel/productViewModel.dart';
import '../../utils/MyTheme.dart';
import 'home_widgets/filterHorizontalList.dart';

class BestSellerScreen extends StatelessWidget {
   const BestSellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'الأكثر مبيعا',
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'IBM Plex Sans Arabic', color: MyTheme.blackColor,
              fontSize: 20.spMin,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle, color: MyTheme.white,),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back, color: MyTheme.blackColor, size: 25.spMin,),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Consumer<FilterViewModel>(
              builder: (context, viewModel, child) {
                return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    children: viewModel.selectedFilters.map((filter) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilterHorizontalList(
                      filter: filter,
                      onRemove: () {
                        viewModel.filterChoice(filter);
                      },
                    ),
                  );
                }).toList(),
                    ),
                );
              },
            ),
            Expanded(
              child: ChangeNotifierProvider(
                create: (_) => ProductViewModel(),
                child: Consumer<ProductViewModel>(
                  builder: (context, productViewModel, child) {
                    final products = productViewModel.products;
                    if (products.isEmpty) {
                      return const Center(child: Text("No products available"));
                    }
                    return GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.spMin,
                        mainAxisSpacing: 5.spMin,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Padding(
                          padding: EdgeInsets.all(8.spMin),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 207.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: MyTheme.greyColor),
                                borderRadius: BorderRadius.circular(10.spMin),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 120.h,
                                          width: 150.w,
                                          color: MyTheme.innerContainer,
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Image.network(product.imageUrl, fit: BoxFit.contain,),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 4.h,
                                          right: 2.w,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(12.spMin),
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  product.rating.toString(),
                                                  style: TextStyle(color: MyTheme.blackColor, fontWeight: FontWeight.w500,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.spMin,
                                                  ),
                                                ),
                                                SizedBox(width: 2.w),
                                                Icon(Icons.star, size: 12.spMin, color: MyTheme.yellowColor,),
                                                SizedBox(width: 2.w),
                                                Text('(${product.reviews})', style: TextStyle(fontSize: 8.spMin,
                                                    color: MyTheme.greyColor,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 5,
                                          right: -35,
                                          child: Container(
                                            height: 30.h,
                                            width: 30.w,
                                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white,),
                                            child: Icon(Icons.favorite_border, color: MyTheme.greyColor, size: 20.spMin,),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 11.h),
                                    Text(product.name, textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontWeight: FontWeight.w500,
                                        fontSize: 14.spMin,
                                        color: MyTheme.blackColor,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 4),
                                        child: Text(
                                          product.description,
                                          style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'IBM Plex Sans Arabic',
                                            color: MyTheme.greyColor,
                                            fontSize: 12.spMin,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5, bottom: 3),
                                          child: Text(' ${product.price} IQD ', style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.spMin,
                                              fontWeight: FontWeight.bold,
                                              color: MyTheme.blackColor,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5, bottom: 3),
                                          child: Icon(Icons.add_shopping_cart, size: 22.spMin, color: MyTheme.yellowColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(color: MyTheme.yellowColor,
              borderRadius: BorderRadius.circular(16.spMin),
            ),
            height: 40.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                     return SortModalBottomSheet();
                    });
                  },
                  child: Row(
                    children: [
                      Text('الترتيب', style: TextStyle(
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
                Text('|',
                  style: TextStyle(color: MyTheme.blackColor, fontSize: 20.spMin,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(context: context, isScrollControlled: true, builder: (BuildContext context){
                      return const FilterModalBottomSheet();
                    });
                  },
                  child: Row(
                    children: [
                      Text(' التصنيف', style: TextStyle(
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
