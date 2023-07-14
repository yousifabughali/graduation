import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {
  String str1,date;
   NotificationCard({
    required this.str1,required this.date,
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 345.w,
      child: Padding(
        padding:  EdgeInsets.only(top: 12.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icons/a1.png',
              height: 46.h,
              width: 46.w,
            ),
            SizedBox(
              width: 8.h,
            ),
            SizedBox(
              height: 62.h,
              width: 268.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    str1,
                    maxLines: 2,
                    style: TextStyle(
                      color: Color.fromRGBO(36, 36, 36, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 2,
                      height: 1.2.h,overflow: TextOverflow.ellipsis,

                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Text(
                    date,
                    style: TextStyle(
                      color: Color.fromRGBO(36, 36, 36, 0.5),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
