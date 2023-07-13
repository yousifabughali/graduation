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
                  color: const Color.fromRGBO(36, 36, 36, 1),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'
                ),
              ),Text(
                'Lorem Ipsum is simply dummy text of the',
                style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 0.5),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'
                ),
              ),
              SizedBox(height: 5.5.h,),
              const DottedLine(dashColor: Color.fromRGBO(36, 36, 36, 0.5),dashGapLength: 6),
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
          child:  Text(
            'Follow',
            style: TextStyle(
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                fontFamily: 'Poppins'
            ),
          ),
        ),
      ],
    );
  }
}