import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/MyTheme.dart';

class SortModalBottomSheet extends StatelessWidget {
   SortModalBottomSheet({super.key});
  int _selectedButton = 0;

  final List<String> labels = ['السعر: من الاعلي الي الاقل', 'السعر: من الاقل الي الاعلي', 'الاكثر انتشارا',
    'الافضل تقييما',
    'جديدنا'
  ];
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
                      padding: const EdgeInsets.all(10.0),
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
                      return RadioListTile<int>(
                        value: index,
                        groupValue: _selectedButton,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedButton = value!;
                          });
                        },
                        activeColor: MyTheme.yellowColor,
                        controlAffinity: ListTileControlAffinity.leading,
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
