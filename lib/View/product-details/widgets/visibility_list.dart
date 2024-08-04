import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class VisibileList extends StatefulWidget {
  const VisibileList({super.key});

  @override
  State<VisibileList> createState() => _VisibileListState();
}

class _VisibileListState extends State<VisibileList> {
  bool _isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isOpened = !_isOpened;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('مواصفات المنتج', style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.bold,fontSize: 18.spMin
                ),),
                Icon(_isOpened ? Icons.keyboard_arrow_up_sharp : Icons.keyboard_arrow_down_sharp,size: 30.spMin,
                  color: MyTheme.blackColor,
                ),
              ],
            ),
          ),
        ),
        _isOpened ?  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [Text('المواد الاساسيه',style: TextStyle(color: MyTheme.greyColor,fontSize: 16.spMin,fontWeight: FontWeight.w500),),
                  const Spacer(),
                  Text('خشب',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Text('وزن المنتج',style: TextStyle(color: MyTheme.greyColor,fontSize: 16.spMin,fontWeight: FontWeight.w500)),
                  const Spacer(),
                  Text('٤٠  كيلو',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500)),
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Text('الماده الثانويه',style: TextStyle(color: MyTheme.greyColor,fontSize: 16.spMin,fontWeight: FontWeight.w500)),
                  const Spacer(),
                  Text('نسيج',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500)),
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Text('طول المنتج',style: TextStyle(color: MyTheme.greyColor,fontSize: 16.spMin,fontWeight: FontWeight.w500)),
                  const Spacer(),
                  Text('١٩٠ سم',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ) : Container(),
      ],
    );
  }
}