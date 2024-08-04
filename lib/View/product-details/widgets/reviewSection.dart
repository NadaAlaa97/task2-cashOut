import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/MyTheme.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                SizedBox(width: 2.w,),
                Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                SizedBox(width: 2.w,),
                Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                SizedBox(width: 2.w,),
                Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
                SizedBox(width: 2.w,),
                Icon(Icons.star, color: MyTheme.yellowColor,size: 16.spMin,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('رائع !', style: TextStyle(fontSize: 16.spMin,fontWeight: FontWeight.w400,fontFamily: 'IBM Plex Sans Arabic'),),
                SizedBox(height: 4.h,),
                Text('قمت بشراء هذه الكنبة من التطبيق وكانت تجربة رائعة! الجودة ممتازة والمظهر أنيق جداً. الخدمة كانت سريعة وسلسة وتم توصيل الكنبة في الوقت المحدد. أنا سعيد جداً بشرائي ',
                style: TextStyle(color: MyTheme.greyColor,fontFamily: 'IBM Plex Sans Arabic',fontSize: 14.spMin,fontWeight: FontWeight.w400),
                  maxLines: 3,
                ),

              ],
            ),
            SizedBox(height: 7.h,),
            Text('أحمد علي, ٢٩ يونيو ٢٠٢٤', style: TextStyle(color: MyTheme.greyColor,fontWeight: FontWeight.w500,
            fontSize: 14.spMin,fontFamily: 'IBM Plex Sans Arabic'
            ),)
          ],
        ),
      ),
    );
  }
}
