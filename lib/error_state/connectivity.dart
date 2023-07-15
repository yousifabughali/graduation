import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/app_router/router.dart';
import 'package:graduation/splashScreen.dart';

class CheckConnectivity extends StatelessWidget {
  const CheckConnectivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 191.h, right: 45.w, left: 44.w),
        child: Column(
          children: [
            SvgPicture.asset('assets/icons/connectivity.svg'),
            SizedBox(
              height: 42.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 62.w, right: 60.w),
              child: Text(
                'No Connection !',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, right: 43.w),
              child: Text(
                'Something wrong with \nyour connection, Please \ntry again.\n',
                textAlign: TextAlign.center,

                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 1.5),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                  backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                  fixedSize: Size(176.w, 56.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.r))),
              onPressed: () {
                AppRouter.NavigateWithReplacemtnToWidget(SplashScreen());

              },
              child: const Text(
                'Retry',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
