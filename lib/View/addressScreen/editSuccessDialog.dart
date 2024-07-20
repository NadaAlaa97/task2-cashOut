import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

void EditSuccessDialog(BuildContext context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      backgroundColor: MyTheme.lightWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.spMin)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network('data:image/png;base64,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'),
          const SizedBox(height: 15,),
          Text('تمت تعديل عنوانك بنجاح',style: TextStyle(color: MyTheme.blackColor,fontSize: 20.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ) ;
  }
  );
}