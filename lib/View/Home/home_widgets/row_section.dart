import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class RowSection extends StatefulWidget {
  final String text;
  final String textTwo;
  final VoidCallback onTap;
  IconData? icon;

  RowSection({super.key, required this.text, required this.textTwo, required this.onTap, this.icon });

  @override
  _RowSectionState createState() => _RowSectionState();
}

class _RowSectionState extends State<RowSection> {
  Color _textTwoColor = MyTheme.greyColor;

  void changeTextColor() {
    setState(() {
      _textTwoColor = _textTwoColor == MyTheme.greyColor ? MyTheme.yellowColor : MyTheme.greyColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 18.spMin,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IBM Plex Sans Arabic',
                  color: MyTheme.blackColor,
                ),
              ),
              SizedBox(width: 2.w,),
              Icon(widget.icon, color: MyTheme.fireColor, size: 25.spMin,)
            ],
          ),
          InkWell(
            onTap: () {
              widget.onTap();
              changeTextColor();
            },
            child: Text(
              widget.textTwo,
              style: TextStyle(
                fontSize: 14.spMin,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBM Plex Sans Arabic',
                color: _textTwoColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
