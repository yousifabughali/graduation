import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentlySearchCard extends StatelessWidget {
  const RecentlySearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/a1.png',
          height: 40.h,
          width: 40.w,
        ),
        SizedBox(
          width: 12.h,
        ),
        SizedBox(
          height: 59.h,
          width: 197.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ahmad Ali',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),Text(
                'Lorem Ipsum is simply dummy text of the',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5.5.h,),
              DottedLine(dashColor: Colors.grey),
            ],
          ),
        ),
        SizedBox(width: 8.5.w,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              fixedSize: Size(73.w, 29.h),
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(12.r))),
          onPressed: () {},
          child: const Text(
            'Follow',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}