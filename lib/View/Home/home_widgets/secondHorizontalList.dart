import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/ViewModel/productViewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class SecondHorizontalProductsList extends StatelessWidget {
  final String text;
  final Color color;
  const SecondHorizontalProductsList({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductViewModel(),
      child: SizedBox(
        height: 250.h,
        child: Consumer<ProductViewModel>(
          builder: (context, productViewModel, child) {
            final product = productViewModel.products.isNotEmpty
                ? productViewModel.products[0] : null;
            if (product == null) {
              return const Center(child: Text("No products available"));
            }

            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 207.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: MyTheme.greyColor),
                      borderRadius: BorderRadius.circular(10.spMin),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              top: 8,
                                left: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                                decoration: BoxDecoration(
                                  color:color,
                                  borderRadius: BorderRadius.circular(8.spMin),
                                ),
                                child: Text(text, style: TextStyle(color: Colors.white,fontSize: 12.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500),),
                              ),
                            ),
                            Container(
                              height: 110.h,
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
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.spMin),),
                                child: Row(
                                  children: [
                                    Text(product.rating.toString(), style: TextStyle(color: MyTheme.blackColor,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 10.spMin,
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    Icon(Icons.star, size: 12.spMin, color: MyTheme.yellowColor,),
                                    SizedBox(width: 2.w),
                                    Text('(${product.reviews})',
                                      style: TextStyle(fontSize: 8.spMin, color: MyTheme.greyColor, fontFamily: 'Poppins',
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
                        SizedBox(height: 8.h),
                        Text(product.name, textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontWeight: FontWeight.w500, fontSize: 14.spMin,
                            color: MyTheme.blackColor,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Text(product.description,
                              style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'IBM Plex Sans Arabic', color: MyTheme.greyColor,
                                fontSize: 12.spMin,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5, bottom: 3),
                              child: Text(' ${product.price} IQD ',
                                style: TextStyle(fontFamily: 'Poppins', fontSize: 14.spMin, fontWeight: FontWeight.bold,
                                  color: MyTheme.blackColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, bottom: 3),
                              child: Icon(Icons.add_shopping_cart, size: 22.spMin, color: MyTheme.yellowColor,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
