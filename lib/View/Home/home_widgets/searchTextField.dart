import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10.spMin,right: 10.spMin),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'أنا أبحث عن ..........',
          hintStyle: const TextStyle(
            fontFamily: 'IBM Plex Sans Arabic',
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          prefixIcon: const Icon(FontAwesome.magnifying_glass_solid, color: MyTheme.greyColor,size: 22,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.spMin),
            borderSide: const BorderSide(color: MyTheme.greyColor)
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.spMin),
              borderSide: const BorderSide(color: MyTheme.greyColor)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.spMin),
              borderSide: const BorderSide(color: MyTheme.greyColor)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.spMin),
              borderSide: const BorderSide(color: MyTheme.greyColor)
          ),
          constraints: BoxConstraints.expand(width: 289.spMin,height: 45.spMin)
        ),

      ),
    );
  }
}
