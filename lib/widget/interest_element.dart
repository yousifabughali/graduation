
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class InterestsElement extends StatefulWidget {
  String? title;
   InterestsElement({
    required this.title,
  super.key,
  });

  @override
  State<InterestsElement> createState() => _InterestsElementState();
}

class _InterestsElementState extends State<InterestsElement> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title!),
        Spacer(),
        SizedBox(
          height: 20.h,
          width: 20.w,
          child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r)),
              value: isChecked,
              onChanged: (value) {

                  setState(() {
                    isChecked = value ?? false;
                  });
                  if(value==true){
                    Provider.of<AuthProvider>(context,listen: false).intrests.add(widget.title!);
                  }


              }),
        ),
      ],
    );
  }
}