import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountRoomCard extends StatelessWidget {
  const AccountRoomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30.w,
            right: 20.w,
          ),
          child: SizedBox(
            height: 120.h,
            width: 375.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/a1.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Eyad Mohammed',
                      style: TextStyle(
                          color: Color.fromRGBO(36, 36, 36, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      '@eyadm',
                      style: TextStyle(
                          color: Color.fromRGBO(36, 36, 36, 0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: Size(72.w, 32.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  onPressed: () {},
                  child:  Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        SizedBox(
          height: 110.h,
          width: 335.w,
          child: Text(
            textAlign: TextAlign.left,
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt et dolore  Lorem ipsum dolor sit amet, consectetur adipisicing consectetur adipisicing  🏆',
            style: TextStyle(
                color: Color.fromRGBO(36, 36, 36, 0.5),
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                fontFamily: 'Poppins'),
          ),
        ),
        SizedBox(height: 18.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 162.w,
              height: 83.h,
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 244, 244, 1),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2.2K',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Followers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(142, 142, 149, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
            Container(
              width: 162.w,
              height: 83.h,
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 244, 244, 1),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '103',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Following',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(142, 142, 149, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
