import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/product-details/widgets/sortReviewsModalSheet.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class ReviewsModalBottomSheet extends StatelessWidget {
  const ReviewsModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('تقيمات و المراجعات', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.spMin,fontFamily: 'IBM Plex Sans Arabic'),),
                InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.close,size: 24.spMin,color: MyTheme.blackColor,))

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: FloatingActionButton(onPressed: (){
              Navigator.of(context).pop();
              showModalBottomSheet(context: context, builder: (context) {
              return SortReviewsModalBottomSheet();
              },);
              },
              backgroundColor: Colors.white,
              hoverColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.spMin),
                side: const BorderSide(color: MyTheme.greyColor),
            ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('الترتيب',style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 18.spMin,fontWeight: FontWeight.w500),),
                    SizedBox(width: 4.w),
                    Icon(Icons.sort,size: 22.spMin,)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(10, (index){
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                            SizedBox(width: 4.w,),
                            Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                            SizedBox(width: 4.w,),
                            Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                            SizedBox(width: 4.w,),
                            Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                            SizedBox(width: 4.w,),
                            Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
            
                          ],
                        ),
                      ),
                      Text('رائع !',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.spMin,fontFamily: 'IBM Plex Sans Arabic'),),
                      SizedBox(height: 5.h,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('قمت بشراء هذه الكنبة من التطبيق وكانت تجربة رائعة! الجودة ممتازة والمظهر أنيق جداً. الخدمة كانت سريعة وسلسة وتم توصيل الكنبة في الوقت المحدد. أنا سعيد جداً بشرائي ',
                          style: TextStyle(color: MyTheme.greyColor,fontFamily: 'IBM Plex Sans Arabic',fontSize: 14.spMin,fontWeight: FontWeight.w400),),
                      ),
                      SizedBox(height: 8.h,),
                      Text('أحمد علي, ٢٩ يونيو ٢٠٢٤',style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: 14.spMin,fontFamily: 'IBM Plex Sans Arabic',
                          color: MyTheme.greyColor),),
                      Divider(
                        color: MyTheme.greyColor,
                        indent: 20.spMin,
                        endIndent: 20.spMin,
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}