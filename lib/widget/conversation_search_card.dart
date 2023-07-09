
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConversationSearchCard extends StatelessWidget {
  String str1,str2;
  IconData icon1,icon2;
   ConversationSearchCard({
     required this.str1,required this.str2,required this.icon1,required this.icon2,
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
            padding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                    icon1,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      str1,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 13.w,),
        Container(
          height: 87.h,
          width: 161.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.h),
              color: Color.fromRGBO(244, 244, 244, 1)),
          child: Padding(
            padding:
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      icon2,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      str2,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
