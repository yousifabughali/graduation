import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/app_router/router.dart';

class RaiseHand extends StatelessWidget {
  const RaiseHand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 276.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 60.w,
              child: Text(
                '🖐️',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 53.sp),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 27.h,
              child: Text(
                'Raise your hand?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(36, 36, 36, 1),
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            SizedBox(
              height: 42.h,
              width: 276.w,
              child: Text(
                textAlign: TextAlign.center,
                'This will let the speakers know you have something you\'d like to say',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(36, 36, 36, 0.5)),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Raise Hand',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.r),
                ),
                backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                minimumSize: Size(176.w, 56.h),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            SizedBox(
              height: 21.h,
              child: InkWell(
                onTap: (){
                  AppRouter.popRouter();
                },
                child: Text(
                  'Never Mind',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(36, 36, 36, 0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
