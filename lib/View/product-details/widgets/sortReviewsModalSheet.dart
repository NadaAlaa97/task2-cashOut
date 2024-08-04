import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/MyTheme.dart';

class SortReviewsModalBottomSheet extends StatelessWidget {
  SortReviewsModalBottomSheet({super.key});
  final List<bool> _selectedButtons = List.generate(5, (index) => false);

  final List<String> labels = ['مفيد جدا', 'الأكثر فائدة', 'أعلى تقييما', 'أقل تقييما', 'مؤخرًا'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380.h,
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)
              {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('الترتيب', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.spMin,
                              fontFamily: 'IBM Plex Sans Arabic'),),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.close, size: 25.spMin,)),
                        ],
                      ),
                    ),
                    ...List.generate(labels.length, (index) {
                      return ListTile(
                        leading: Checkbox(
                          shape: const CircleBorder(),
                          value: _selectedButtons[index],
                          onChanged: (bool? value) {
                            setState(() {
                              _selectedButtons[index] = value!;
                            });
                          },
                          activeColor: MyTheme.yellowColor,
                        ),
                        title: Text(labels[index], style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 18.spMin,
                            fontWeight: FontWeight.w400),),
                      );
                    })
                  ],
                );
              }
          )
      ),
    );
  }
}