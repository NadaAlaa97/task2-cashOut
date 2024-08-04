import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const TextContainer({super.key, required this.text, required this.isSelected, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.5.w),
        child: Container(
          height: 80.h,
          padding: EdgeInsets.all(8.0.spMin),
          decoration: BoxDecoration(
            border: Border.all(color: isSelected ? MyTheme.textContainer : MyTheme.greyColor),
            borderRadius: BorderRadius.circular(10.spMin),
          ),
          child: Center(
            child: Text(
              text, style: TextStyle(color: MyTheme.blackColor, fontSize: 14.spMin, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
