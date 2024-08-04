import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/MyTheme.dart';

class RowText extends StatelessWidget {
  const RowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Text('IQD 60,000 ' , style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 24.spMin,color: MyTheme.blackColor),),
        ),
        Text('IQD 60,000 ', style: TextStyle(color: MyTheme.greyColor,fontSize: 12.spMin,
            fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w400,decoration: TextDecoration.lineThrough,
            decorationColor: MyTheme.greyColor),),
        SizedBox(width: 5.w,),
        Container(
          height: 20.h,
          width: 20.w,
          decoration: BoxDecoration(
            color: MyTheme.redContainer,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.spMin),bottomRight: Radius.circular(10.spMin)),
          ),
          child: Center(
            child: Text('خصم ١٥ ٪',style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400,fontFamily: 'IBM Plex Sans Arabic',fontSize: 12.spMin),),
          ),
        )
      ],
    );

  }
}
