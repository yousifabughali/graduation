import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/auth_screens/sign_in.dart';
import 'package:graduation/auth_screens/sign_up.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 177.h, left: 139.w, right: 140.w, bottom: 28.h),
              child: Container(
                height: 115.h,
                width: 98.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.h),
                ),
                child: SvgPicture.asset('assets/icons/logo.svg'),
              ),
            ),
            Text(
              'CODNET',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              'Tech Together, Community Powered!',
              style: TextStyle(
                  color: const Color.fromRGBO(142, 142, 149, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(
              height: 134.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignUp()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                backgroundColor: Colors.black,
                minimumSize: Size(325.w, 56.h),
              ),
              child: Text(
                'Signup',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignIn()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: const Color.fromRGBO(36, 36, 36,1),width: 0.6.w)),
                backgroundColor: Colors.white,
                minimumSize: Size(325.w, 56.h),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 1),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                    child: Divider(
                  thickness: 0.6,
                  indent: 25,
                  endIndent: 10,
                  color: Color.fromRGBO(36, 36, 36, 0.5),
                )),
                Text(
                  'or',
                  style: TextStyle(
                    color: const Color.fromRGBO(36, 36, 36, 0.5),
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                  ),
                ),
                const Flexible(
                  child: Divider(
                    thickness: 0.6,
                    indent: 10,
                    endIndent: 25,
                    color: Color.fromRGBO(36, 36, 36, 0.5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 68.h),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.r),
                    side: BorderSide(
                      color: const Color.fromRGBO(36, 36, 36, 0.5),
                      width: 0.6.w,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  minimumSize: Size(325.w, 44.h),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 17.h,
                      width: 16.w,
                      child: SvgPicture.asset('assets/icons/google.svg'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Continue with google',
                      style: TextStyle(
                        color: const Color.fromRGBO(36, 36, 36, 1),
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
