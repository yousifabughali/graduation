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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w,),
          child: Center(
            child: Column(
              children: [
                Spacer(flex: 3,),
                Container(
                  height: 176.h,
                  width: 176.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(247, 250, 234, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: Color.fromRGBO(142, 186, 67, 1),
                    size: 110.r,
                  ),
                ),
                Spacer(flex: 1,),
                Text(
                  'Welcome To The Club Of Technicians',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.77.h,
                    fontSize: 26.sp,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(16, 16, 16, 1),
                  ),
                ),
                SizedBox(height: 6.h,),
                Text(
                  'Enjoy your technical trip ! Let\'s start!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    height: 1.5.h,
                    color: Color.fromRGBO(147, 147, 147, 1),
                  ),
                ),
                Spacer(flex: 1,),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25,),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                      openBottomSheet(context, SelectYourIntrest());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                      minimumSize: Size(325.w, 56.h),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 3,),

              ],
            ),
          ),
        ),
      ),
    );
  }

  openBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
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
