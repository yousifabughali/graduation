import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConversationSearchCard extends StatelessWidget {
  String str1, str2;

  ConversationSearchCard({
    required this.str1,
    required this.str2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 87.h,
          width: 161.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.h),
              color: Color.fromRGBO(244, 244, 244, 1)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  str1,
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the',
                  style: TextStyle(
                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                      fontSize: 12.sp,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 13.w,
        ),
        Container(
          height: 87.h,
          width: 161.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.h),
              color: Color.fromRGBO(244, 244, 244, 1)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  str2,
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the',
                  style: TextStyle(
                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                      fontSize: 12.sp,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
