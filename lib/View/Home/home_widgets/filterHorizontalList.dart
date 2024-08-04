import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/MyTheme.dart';

class FilterHorizontalList extends StatelessWidget {
  final String filter;
  final VoidCallback onRemove;

  const FilterHorizontalList({required this.filter, required this.onRemove, super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.spMin),
        border: Border.all(color: MyTheme.greyColor.withOpacity(0.3))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            filter,
            style:  TextStyle(fontSize: 14.spMin, color: MyTheme.blackColor),
          ),
           SizedBox(width: 4.w),
          InkWell(
            onTap: onRemove,
            child:  Icon(Icons.close, size: 16.spMin, color: MyTheme.blackColor),
          ),
        ],
      ),
    );
  }
}