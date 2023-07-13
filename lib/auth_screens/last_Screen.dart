import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation/home_screens/home_screen.dart';
import 'package:graduation/widget/all_done.dart';
import 'package:graduation/widget/bottom_sheet.dart';
import 'package:graduation/widget/select_level.dart';

import '../widget/select_interst.dart';

class SuccessfulRegistration extends StatefulWidget {
  const SuccessfulRegistration({Key? key}) : super(key: key);

  @override
  State<SuccessfulRegistration> createState() => _SuccessfulRegistrationState();
}

class _SuccessfulRegistrationState extends State<SuccessfulRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 194.h, left: 100.w, right: 99.w, bottom: 27.h),
            child: Container(
              height: 176.h,
              width: 176.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 250, 234, 1),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Icon(
                Icons.check_circle,
                color: Color.fromRGBO(142, 186, 67, 1),
                size: 110.r,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 12.h),
            child: Text(
              'Welcome To The Club Of tTechnicians',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                height: 1.8.h,
                fontSize: 26.sp,
                fontFamily: 'Poppins',
                color: Color.fromRGBO(16, 16, 16, 1),
              ),
            ),
          ),
           Text(
            'Enjoy your technical trip ! Let\'s start!',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: Color.fromRGBO(147, 147, 147, 1),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 205),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                openBottomSheet(context, SelectYourIntrest());
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                backgroundColor: Colors.black,
                minimumSize: Size(325.w, 56.h),
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }

  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      showDragHandle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0.r),
            topRight: Radius.circular(40.0.r)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 732.h,
          width: 375.w,
          child: widget,
        );
      },
    );
  }
}
