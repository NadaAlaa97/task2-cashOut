import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HorizontalListViewWidget extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfppM6w9-FdJx1giKuug9T_5t6fxGcSQQxbbw4u_-p_290ionu', 'label': 'الصحه و الجمال'},
    {'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfppM6w9-FdJx1giKuug9T_5t6fxGcSQQxbbw4u_-p_290ionu', 'label': 'الصحه و الجمال'},
    {'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfppM6w9-FdJx1giKuug9T_5t6fxGcSQQxbbw4u_-p_290ionu', 'label': 'الصحه و الجمال'},
    {'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfppM6w9-FdJx1giKuug9T_5t6fxGcSQQxbbw4u_-p_290ionu', 'label': 'الصحه و الجمال'},
    {'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfppM6w9-FdJx1giKuug9T_5t6fxGcSQQxbbw4u_-p_290ionu', 'label': 'الصحه و الجمال'},
    {'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfppM6w9-FdJx1giKuug9T_5t6fxGcSQQxbbw4u_-p_290ionu', 'label': 'الصحه و الجمال'},
  ];

  HorizontalListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.spMin,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: EdgeInsets.all(8.spMin),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 70.spMin,
                      height: 70.spMin,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(item['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      item['label']!,
                      style: TextStyle(
                        fontSize: 14.spMin,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBM Plex Sans Arabic'
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}