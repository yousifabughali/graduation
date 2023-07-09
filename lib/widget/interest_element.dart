
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class InterestsElement extends StatelessWidget {
  String? title;
   InterestsElement({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title!),
        Spacer(),
        SizedBox(
          height: 20.h,
          width: 20.w,
          child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r)),
              value: false,
              onChanged: (value) {
                if(value==true){
                  Provider.of<AuthProvider>(context).intrests.add(title!);
                }

              }),
        ),
      ],
    );
  }
}