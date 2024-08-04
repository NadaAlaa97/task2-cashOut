import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  final VoidCallback onTap;

  const ImageContainer({super.key, required this.imageUrl, required this.isSelected, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ?MyTheme.yellowColor : MyTheme.greyColor,),
          borderRadius: BorderRadius.circular(10.spMin),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
