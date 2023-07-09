
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldInSetting extends StatelessWidget {
  String title;
   TextFieldInSetting({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53.h,
      width: 335.w,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(title),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide:
            BorderSide(style: BorderStyle.solid, width: 1.w),
          ),
        ),
      ),
    );
  }
}
