import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountRoomCard extends StatelessWidget {
  const AccountRoomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 375.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/icons/a1.png',width: 80.w,height: 80.h,),
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
                  elevation: 0,
                  backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                  fixedSize: Size(80.w, 32.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                onPressed: () {},
                child:  Text(
                  'Follow',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        SizedBox(
          width: 335.w,
          child: Text(
            textAlign: TextAlign.left,
            'Dedicated UX Designer committed to crafting user-friendly experiences. With a strong foundation in UX principles, brings attention to detail and a collaborative mindset to every project.🏆',
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
