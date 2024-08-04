import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class RowContainerProductColors extends StatefulWidget {
  const RowContainerProductColors({super.key});

  @override
  State<RowContainerProductColors> createState() => _RowContainerProductColorsState();
}

class _RowContainerProductColorsState extends State<RowContainerProductColors> {
  int _selectedIndex = 0;
  List<Color> colors = [MyTheme.greenCircle, MyTheme.redColor, MyTheme.textContainer];
  List<String> text = ['اخضر', 'احمر', 'ازرق'];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: List.generate(colors.length, (index) {
          return Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 2.5.w),
                child: Container(
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.spMin),
                    border: Border.all(
                      color: _selectedIndex == index ? MyTheme.textContainer : MyTheme.greyColor,
                    ),
                  ),
                  child: Column(
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ClipRRect(
                         clipBehavior: Clip.antiAlias,
                         borderRadius: BorderRadius.circular(10.spMin),
                         child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCzB8r1Tw3a9ZNVCjwpDW7xddYqMyiIbZ89-BnnSA6zhxl-hww',
                         height: 75.h,
                           width: 99.w,
                         ),
                       ),
                     ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 5.w,),
                            Icon(Icons.circle, color: colors[index], size: 14.spMin,),
                            const SizedBox(width: 5),
                            Text(text[index], style: const TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic'
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}