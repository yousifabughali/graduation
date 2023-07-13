import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/provider/auth_provider.dart';
import 'package:graduation/provider/firestore_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<FireStoreProvider>();
    navigationFun(context);
  }

  navigationFun(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Provider.of<AuthProvider>(context, listen: false).checkUser();
  }

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
                  top: 299.h, left: 139.w, right: 140.w, bottom: 32.h),
              child: SvgPicture.asset('assets/icons/logo.svg'),
            ),
            Text(
              'CODNET',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.sp,
                  fontFamily: 'Poppins',
                  height: 1.5,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 299.h),
              child: Text(
                'Tech Together, Community Powered!',
                style: TextStyle(
                  color: const Color.fromRGBO(142, 142, 149, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
