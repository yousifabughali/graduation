import 'package:flutter/foundation.dart';
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
            const Text(
              'CODNET',
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              'Join Our Community',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(
              height: 134.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)),
                backgroundColor: Colors.black,
                minimumSize: Size(325.w, 56.h),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
              },
              child:  Text(
                'Sign In',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: Colors.black)),
                backgroundColor: Colors.white,
                minimumSize: Size(325.w, 56.h),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Flexible(
                    child: Divider(
                  thickness: 0.5,
                  indent: 30,
                  endIndent: 10,
                  color: Colors.grey,
                )),
                Text('or',style: TextStyle(color: Colors.grey),),
                Flexible(
                    child: Divider(
                  thickness: 0.5,
                  indent: 10,
                  endIndent: 30,
                  color: Colors.grey,
                )),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 68.h),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Image.asset('assets/images/google.png'),
                      height: 17.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Continue with google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                      side: BorderSide(color: Colors.black)),
                  backgroundColor: Colors.white,
                  minimumSize: Size(325.w, 44.h),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
